from torch import nn
from torch.nn import init
from torch.nn import functional as F
from torch.autograd import Variable
from torchvision import utils
import torch.utils.cpp_extension
import random
import os

torch.ops.load_library("transforms/erode/build/liberode.so")
torch.ops.load_library("transforms/dilate/build/libdilate.so")
torch.ops.load_library("transforms/scale/build/libscale.so")
torch.ops.load_library("transforms/rotate/build/librotate.so")
torch.ops.load_library("transforms/resize/build/libresize.so")
torch.ops.load_library("transforms/translate/build/libtranslate.so")

class Erode(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        if(not isinstance(params[0], int) or params[0] < 0):
            print('Erosion parameter must be a positive integer')
            # raise ValueError
        
        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                tf = torch.ops.my_ops.erode(d_,params[0])
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class Dilate(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        if(not isinstance(params[0], int) or params[0] < 0):
            print('Dilation parameter must be a positive integer')
            # raise ValueError
        
        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                tf = torch.ops.my_ops.dilate(d_,params[0])
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class Translate(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        if(not isinstance(params[0], float) or not isinstance(params[1], float)
         or params[0] < -1 or params[0] > 1 or params[1] < -1 or params[1] > 1):
            print('Translation must have two parameters, which should be floats between -1 and 1.')
            # raise ValueError
        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                tf = torch.ops.my_ops.translate(d_,params[0], params[1])
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class Resize(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        if not isinstance(params[0], float) or not isinstance(params[1], float):
            print('Resize must have two parameters, which should be positive floats.')
            # raise ValueError
        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            d_ = torch.squeeze(dim)
            print(d_.size())
            tf = torch.ops.my_ops.resize(d_,params[0], params[1])
            print(tf.size())
            tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
            x_array[i] = tf
        return torch.cat(x_array,1)

class Scale(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        if(not isinstance(params[0], float)):
            print('Scale parameter should be a float.')
            # raise ValueError
        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                tf = torch.ops.my_ops.scale(d_,params[0])
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class Rotate(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        if(not isinstance(params[0], float) or params[0] < 0 or params[0] > 360):
            print('Rotation parameter should be a float between 0 and 360 degrees.')
            # raise ValueError
        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                tf = torch.ops.my_ops.rotate(d_,params[0])
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class FlipHorizontal(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                tf = d_.flip([1])
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class FlipVertical(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                tf = d_.flip([0])
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class Invert(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                ones = torch.ones(d_.size(), dtype=d_.dtype, layout=d_.layout, device=d_.device)
                tf = ones - d_
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class BinaryThreshold(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        if(not isinstance(params[0], float) or params[0] < -1 or params[0] > 1):
            print('Binary threshold parameter should be a float between -1 and 1.')
            # raise ValueError

        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                t = Variable(torch.Tensor([params[0]]))
                t = t.to(d_.device)
                tf = (d_ > t).float() * 1
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class ScalarMultiply(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        if(not isinstance(params[0], float)):
            print('Scalar multiply parameter should be a float')
            # raise ValueError

        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                tf = d_ * params[0]
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class Ablate(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, x, params, indicies):
        x_array = list(torch.split(x,1,1))
        for i, dim in enumerate(x_array):
            if i in indicies:
                d_ = torch.squeeze(dim)
                tf = d_ * 0
                tf = torch.unsqueeze(torch.unsqueeze(tf,0),0)
                x_array[i] = tf
        return torch.cat(x_array,1)

class ManipulationLayer(nn.Module):
    def __init__(self, layerID):
        super().__init__()
        self.layerID = layerID
        
        # layers
        self.erode = Erode()
        self.dilate = Dilate()
        self.translate = Translate()
        self.scale = Scale()
        self.rotate = Rotate()
        self.resize = Resize()
        self.flip_h = FlipHorizontal()
        self.flip_v = FlipVertical()
        self.invert = Invert()
        self.binary_thresh = BinaryThreshold()
        self.scalar_multiply = ScalarMultiply()
        self.ablate = Ablate()
        
        self.layer_options = {
            "erode" : self.erode,
            "dilate": self.dilate,
            "translate": self.translate,
            "scale": self.scale,
            "rotate": self.rotate,
            "resize": self.resize,
            "flip-h": self.flip_h,
            "flip-v": self.flip_v,
            "invert": self.invert,
            "binary-thresh": self.binary_thresh,
            "scalar-multiply": self.scalar_multiply,
            "ablate": self.ablate
        }

    def save_activations(self, input, index, l_min, l_max):
        if self.layerID >= l_min and self.layerID <= l_max:

            
            x_array = list(torch.split(input,1,1))
            for i, activation in enumerate(x_array):
                path = 'activations/'+str(self.layerID) +'/'+ str(i) + '/'
                if not os.path.exists(path):
                    os.makedirs(path)
                utils.save_image(
                    torch.squeeze(activation),
                    path+str(index).zfill(5)+'.png',
                    nrow=1,
                    normalize=True,
                    range=(-1, 1))

    def forward(self, input, tranforms_dict_list):
        out = input
        for transform_dict in tranforms_dict_list:
            if transform_dict['layerID'] == -1:
                self.save_activations(input, transform_dict['index'], transform_dict['params'][0], transform_dict['params'][1])
            if transform_dict['layerID'] == self.layerID:
                out = self.layer_options[transform_dict['transformID']](out, transform_dict['params'], transform_dict['indicies'])
        return out
    