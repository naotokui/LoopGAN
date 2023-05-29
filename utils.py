
import yaml
import random

# for 
import sys

# its win32, maybe there is win64 too?
if sys.platform.startswith('win'):
    import pathlib
    temp = pathlib.PosixPath
    pathlib.PosixPath = pathlib.WindowsPath

def read_yaml(fp):
    with open(fp) as file:
        # return yaml.load(file)
        return yaml.load(file, Loader=yaml.Loader)
    
def create_layer_channel_dim_dict(channel_multiplier, n_layers=16):
    layer_channel_dict = {
        0: 512,
        1: 512,
        2: 512,
        3: 512,
        4: 512,
        5: 512,
        6: 512,
        7: 256*channel_multiplier,
        8: 256*channel_multiplier,
        9: 128*channel_multiplier,
        10: 128*channel_multiplier,
        11: 64*channel_multiplier,
        12: 64*channel_multiplier,
        13: 32*channel_multiplier,
        14: 32*channel_multiplier,
        15: 16*channel_multiplier,
        16: 16*channel_multiplier
    }
    return  {k: v for k, v in layer_channel_dict.items() if int(k) <= n_layers}

def create_random_transform_dict(layer, layer_channel_dict, transform, params, percentage):
    layer_dim = layer_channel_dict[layer]
    num_samples = int( layer_dim * percentage )
    rand_indicies = random.sample(range(0, layer_dim), num_samples)
    transform_dict ={
        "layerID": layer,
        "transformID": transform,
        "indicies": rand_indicies,
        "params": params
    }
    return transform_dict

def create_layer_wide_transform_dict(layer, layer_channel_dict, transform, params):
    layer_dim = layer_channel_dict[layer]
    transform_dict ={
        "layerID": layer,
        "transformID": transform,
        "indicies": range(0, layer_dim),
        "params": params
    }
    return transform_dict

def create_cluster_transform_dict(layer, layer_channel_dict, cluster_config, transform, params, cluster_ID):
    layer_dim = layer_channel_dict[layer]
    indicies = []
    for i, c_dict in enumerate(cluster_config[layer]):
        if c_dict['cluster_index'] == int(cluster_ID):
            indicies.append(c_dict['feature_index'])
    print(indicies)
    if len(indicies) == 0:
        print("No indicies found for clusterID: " +str(cluster_ID) + " on layer: " +str(layer))
    transform_dict ={
        "layerID": layer,
        "transformID": transform,
        "indicies": indicies,
        "params": params
    }
    return transform_dict

def create_transforms_dict_list(yaml_config, cluster_config, layer_channel_dict):
    transform_dict_list = []
    
    for transform in yaml_config['transforms']:
        if transform['features'] == 'all':
            transform_dict_list.append(
                create_layer_wide_transform_dict(transform['layer'],
                    layer_channel_dict, 
                    transform['transform'], 
                    transform['params']))
        elif transform['features'] == 'random':
            transform_dict_list.append(
                create_random_transform_dict(transform['layer'],
                    layer_channel_dict, 
                    transform['transform'], 
                    transform['params'],
                    transform['feature-param']))
        elif transform['features'] == 'cluster' and cluster_config != {}:
            transform_dict_list.append(
                create_cluster_transform_dict(transform['layer'],
                    layer_channel_dict, 
                    cluster_config,
                    transform['transform'], 
                    transform['params'],
                    transform['feature-param']))
        else:
            print('transform type: ' + str(transform) + ' not recognised')
    
    return transform_dict_list
        
