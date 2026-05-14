
**Audio Streaming:**
*Consider packets are sent from source to destination with a timestamp. These packets may reach the destination out of order or may be lost entirely. How to handle re-playing the audio at the destination with minimal skips?*

We would need to maintain a buffer of packets resulting in a delay for the destination (a few ms)
We can then ensure incoming packets are placed correctly in the buffer. We can guess what the audio would be for missing timestamps by aggregating nearby timestamps. We can also signal the source to reduce the audio quality (use less bandwidth) if too many packets are lost.

