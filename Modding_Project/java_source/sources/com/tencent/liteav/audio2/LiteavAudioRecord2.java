package com.tencent.liteav.audio2;

import android.media.AudioRecord;
import android.os.Process;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.JNINamespace;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
@JNINamespace("liteav::audio")
/* loaded from: classes6.dex */
class LiteavAudioRecord2 {
    private static final String TAG = "LiteavAudioRecord";
    private AudioRecord mAudioRecord;
    private int mBufferSize = 0;

    private static String audioSourceToString(int i) {
        switch (i) {
            case 0:
                return "DEFAULT";
            case 1:
                return "MIC";
            case 2:
                return "VOICE_UPLINK";
            case 3:
                return "VOICE_DOWNLINK";
            case 4:
                return "VOICE_CALL";
            case 5:
                return "CAMCORDER";
            case 6:
                return "VOICE_RECOGNITION";
            case 7:
                return "VOICE_COMMUNICATION";
            case 8:
            default:
                return "INVALID";
            case 9:
                return "UNPROCESSED";
            case 10:
                return "VOICE_PERFORMANCE";
        }
    }

    private static AudioRecord createStartedAudioRecord(int i, int i2, int i3, int i4) {
        AudioRecord audioRecord;
        try {
            audioRecord = new AudioRecord(i, i2, i3, 2, i4);
        } catch (Throwable unused) {
            audioRecord = null;
        }
        try {
            if (audioRecord.getState() == 1) {
                audioRecord.startRecording();
                Log.i(TAG, "create AudioRecord success. sampleRate: %d, channelConfig: %d, bufferSize: %d, audio source: %s", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), audioSourceToString(i));
                return audioRecord;
            }
            throw new RuntimeException("AudioRecord is not initialized.");
        } catch (Throwable unused2) {
            Log.w(TAG, "create AudioRecord failed. source: %s, sampleRate: %d, channelConfig: %d, bufferSize: %d", audioSourceToString(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            destroyAudioRecord(audioRecord);
            return null;
        }
    }

    private static void destroyAudioRecord(AudioRecord audioRecord) {
        if (audioRecord == null) {
            return;
        }
        try {
            if (audioRecord.getRecordingState() == 3) {
                audioRecord.stop();
            }
            audioRecord.release();
        } catch (Throwable th) {
            Log.e(TAG, "stop AudioRecord failed.", th);
        }
    }

    public int getSessionId() {
        AudioRecord audioRecord = this.mAudioRecord;
        if (audioRecord == null) {
            return -1;
        }
        return audioRecord.getAudioSessionId();
    }

    public int read(ByteBuffer byteBuffer, int i) {
        if (this.mAudioRecord == null) {
            return -1;
        }
        byteBuffer.position(0);
        int read = this.mAudioRecord.read(byteBuffer, i);
        if (read < 0) {
            Log.e(TAG, "read failed, %d", Integer.valueOf(read));
            return -1;
        }
        return read;
    }

    public int startRecording(int i, int i2, int i3, int i4) {
        int i5;
        int[] iArr = {i, 1, 5, 0};
        if (i3 == 1) {
            i5 = 16;
        } else {
            i5 = 12;
        }
        int minBufferSize = AudioRecord.getMinBufferSize(i2, i5, 2);
        if (minBufferSize <= 0) {
            Log.e(TAG, "AudioRecord.getMinBufferSize return error: ".concat(String.valueOf(minBufferSize)), new Object[0]);
        }
        int i6 = i3 * i2;
        if (minBufferSize < i6) {
            minBufferSize = i6;
        }
        for (int i7 = 0; i7 < 4 && this.mAudioRecord == null; i7++) {
            int i8 = iArr[i7];
            for (int i9 = 1; i9 <= 2 && this.mAudioRecord == null; i9++) {
                int i10 = minBufferSize * i9;
                this.mBufferSize = i10;
                if (i10 >= i4 * 4 || i9 >= 2) {
                    this.mAudioRecord = createStartedAudioRecord(i8, i2, i5, i10);
                }
            }
        }
        if (this.mAudioRecord == null) {
            return -1;
        }
        Process.setThreadPriority(-19);
        return 0;
    }

    public void stopRecording() {
        destroyAudioRecord(this.mAudioRecord);
        this.mAudioRecord = null;
    }
}
