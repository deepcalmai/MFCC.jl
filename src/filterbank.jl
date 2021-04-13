abstract type FilterBank end
    
    struct Bark <: FilterBank end
    
    abstract type MelFilterBank <: FilterBank end
        struct Mel <: MelFilterBank end
        
        abstract type HTKMelFilterBank <: MelFilterBank end
            struct HTKMel <: HTKMelFilterBank end
            struct FCMel <: HTKMelFilterBank end


fb_type(::Bark) = "bark"
fb_type(::Mel) = "mel"
fb_type(::HTKMel) = "htkmel"
fb_type(::FCMel) = "fcmel"
