# libvcodec

This library focuses on hardware accelerated encoding / decoding of common video codecs.

The API here is generally based on the web [VideoEncoder](https://developer.mozilla.org/en-US/docs/Web/API/VideoEncoder)/[Decoder](https://developer.mozilla.org/en-US/docs/Web/API/VideoDecoder) APIs.

Current encode support:

| GPU      | H264 | HEVC | AV1  |
|----------|------|------|------|
| Nvidia   | ❌   | ❌   | ❌   |
| AMD      | ❌   | ❌   | ❌   |
| Apple    | ❌   | ❌   | ❌   |
| Intel    | ❌   | ❌   | ❌   |

Current decode support:

| GPU      | H264 | HEVC | AV1  |
|----------|------|------|------|
| Nvidia   | ❌   | ❌   | ❌   |
| AMD      | ❌   | ❌   | ❌   |
| Apple    | ❌   | ❌   | ❌   |
| Intel    | ❌   | ❌   | ❌   |
