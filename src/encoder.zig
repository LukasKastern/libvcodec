const Codec = @import("codecs.zig").Codec;
const Texture = @import("graphics.zig").Texture;
const GraphicsAPI = @import("graphics.zig").GraphicsAPI;
const GraphicsDevice = @import("graphics.zig").GraphicsDevice;

// Bitrate mode
pub export const EncoderBitrateMode = enum {
    // The encoder will target a constant bitrate
    Constant,

    // The encoder targets a variable bitrate
    Variable,

    // The encoder will disregard the config bitrate.
    // Instead the frame quality is based on the per frame quantizer value.
    Quantizer,
};

// Quality preset
pub export const EncoderQualityPreset = enum {
    // Loss less / highest quality encoding
    Transcoding,

    // High quality encoding
    HighQuality,

    // Low latency encoding
    LowLatency,

    // Lowest latency encoding
    UtraLowLatency,
};

// Encoder config
pub export const EncoderConfig = struct {
    // Codec to encode
    codec: Codec,

    // Output width
    width: u32,

    // Output height
    height: u32,

    // Bitrate - usage depends on the mode
    bitrate: u32,

    // Mode to adjust the quality of the encoder
    bitrateMode: EncoderBitrateMode,

    // Expected framerate to encoder
    framerate: u32,

    // Qualty preset to use
    qualityPreset: EncoderQualityPreset,
};

pub export const EncoderFrame = struct {
    // Texture to encode
    texture: Texture,

    // true to force this frame to be encoded as an IDR
    keyframe: bool,

    // Quantizer value to use when encoder was configured with bitrateMode set to Quantizer
    // Value range depends on codec.
    quantizer: u32,
};

// Encoder callbacks
pub export const EncoderCallbacks = struct {
    onFrame: *const fn () void,
};

// Encoder API
pub export const Encoder = struct {

    // Configure the encoder
    configure: *const fn (config: *const EncoderConfig) void,

    // Encode a frame
    encode: *const fn (frame: *const EncoderFrame) void,
};

// Creation time options of the encoder
pub const EncoderCreateConfiguration = struct {
    // Device that the encoder should run on top of
    device: GraphicsDevice,

    // API that the attached device maps to
    deviceAPI: GraphicsAPI,
};

pub const createEncoder = fn (options: EncoderCreateConfiguration, callbacks: EncoderCallbacks) void{};
