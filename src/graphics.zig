// Device pointer - depends on API
// D3D11: D3D11Device
// D3D12: D3D12Device
// OpenGL: null
pub const GraphicsDevice = anyopaque;

// Texture pointer
// D3D11: D3D11Texture2D
// D3D12: D3D12Texture2D
pub const GraphicsTexture = anyopaque;

// Graphics API
pub const GraphicsAPI = enum {
    D3D11,
    D3D12,
    OpenGL,
    Vulkan,
    Metal,
};
