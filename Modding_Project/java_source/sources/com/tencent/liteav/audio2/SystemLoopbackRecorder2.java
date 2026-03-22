package com.tencent.liteav.audio2;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioPlaybackCaptureConfiguration;
import android.media.AudioRecord;
import android.media.projection.MediaProjection;
import android.os.Process;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.JNINamespace;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
@JNINamespace("liteav::audio")
/* loaded from: classes6.dex */
public class SystemLoopbackRecorder2 {
    private static final String TAG = "SystemLoopbackRecorder2";
    private static final Object mLock = new Object();
    private static MediaProjection mMediaProjection;
    private static volatile long mNativeSystemLoopbackRecorder;

    public SystemLoopbackRecorder2(long j) {
        mNativeSystemLoopbackRecorder = j;
    }

    private static native void nativeSetMediaProjectionSession(long j, MediaProjection mediaProjection);

    public static void notifyMediaProjectionState(MediaProjection mediaProjection) {
        boolean z;
        StringBuilder sb = new StringBuilder("Received MediaProjection state ");
        if (mediaProjection != null) {
            z = true;
        } else {
            z = false;
        }
        sb.append(z);
        Log.i(TAG, sb.toString(), new Object[0]);
        synchronized (mLock) {
            mMediaProjection = mediaProjection;
            setMediaProjectionSession();
        }
    }

    public static void setMediaProjectionSession() {
        if (mMediaProjection == null) {
            Log.i(TAG, "MediaProjection is null.", new Object[0]);
        } else if (mNativeSystemLoopbackRecorder != 0) {
            nativeSetMediaProjectionSession(mNativeSystemLoopbackRecorder, mMediaProjection);
        }
    }

    public MediaProjection getMediaProjection() {
        return mMediaProjection;
    }

    public void releaseNativeSystemLoopbackRecorder() {
        mNativeSystemLoopbackRecorder = 0L;
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class Recorder {

        /* renamed from: a  reason: collision with root package name */
        private AudioRecord f10185a;
        private AudioManager b;

        public Recorder() {
            Context applicationContext = ContextUtils.getApplicationContext();
            ContextUtils.getApplicationContext();
            this.b = (AudioManager) applicationContext.getSystemService("audio");
        }

        private static AudioRecord a(MediaProjection mediaProjection, int i, int i2, int i3) {
            AudioPlaybackCaptureConfiguration build;
            AudioRecord.Builder audioPlaybackCaptureConfig;
            AudioPlaybackCaptureConfiguration.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaProjection);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.addMatchingUsage(1);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.addMatchingUsage(14);
            build = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.build();
            if (build == null) {
                return null;
            }
            int i4 = i2 == 1 ? 16 : 12;
            AudioFormat build2 = new AudioFormat.Builder().setEncoding(2).setSampleRate(i).setChannelMask(i4).build();
            int minBufferSize = AudioRecord.getMinBufferSize(i, i4, 2);
            AudioRecord audioRecord = null;
            for (int i5 = 1; i5 <= 2 && audioRecord == null; i5++) {
                int i6 = minBufferSize * i5;
                if (i6 >= i3 * 4 || i5 >= 2) {
                    try {
                        audioPlaybackCaptureConfig = new AudioRecord.Builder().setAudioFormat(build2).setBufferSizeInBytes(i6).setAudioPlaybackCaptureConfig(build);
                        audioRecord = audioPlaybackCaptureConfig.build();
                    } catch (Throwable th) {
                        Log.w(SystemLoopbackRecorder2.TAG, "Create record error " + th.getMessage(), new Object[0]);
                        a(audioRecord);
                    }
                    if (audioRecord.getState() != 1) {
                        Log.e(SystemLoopbackRecorder2.TAG, "Audio record state error", new Object[0]);
                        a(audioRecord);
                        audioRecord = null;
                    } else {
                        audioRecord.startRecording();
                        Log.i(SystemLoopbackRecorder2.TAG, "Create audio record success", new Object[0]);
                    }
                }
            }
            return audioRecord;
        }

        public int read(ByteBuffer byteBuffer, int i) {
            if (this.f10185a == null) {
                return -1;
            }
            byteBuffer.position(0);
            int read = this.f10185a.read(byteBuffer, i);
            if (read <= 0) {
                Log.e(SystemLoopbackRecorder2.TAG, "Read failed ".concat(String.valueOf(read)), new Object[0]);
                return -1;
            }
            return read;
        }

        public int startRecording(MediaProjection mediaProjection, int i, int i2, int i3) {
            int i4;
            try {
                AudioManager audioManager = this.b;
                if (audioManager != null) {
                    audioManager.setAllowedCapturePolicy(3);
                }
            } catch (Throwable th) {
                Log.e(SystemLoopbackRecorder2.TAG, "ForbidCaptureAudioFromCurrentApp error " + th.getMessage(), new Object[0]);
            }
            AudioManager audioManager2 = this.b;
            if (audioManager2 != null) {
                i4 = audioManager2.getMode();
            } else {
                i4 = 0;
            }
            a(0);
            this.f10185a = a(mediaProjection, i, i2, i3);
            a(i4);
            if (this.f10185a == null) {
                return -1;
            }
            Process.setThreadPriority(-19);
            return 0;
        }

        public void stopRecording() {
            a(this.f10185a);
            this.f10185a = null;
        }

        private static void a(AudioRecord audioRecord) {
            if (audioRecord == null) {
                return;
            }
            try {
                if (audioRecord.getRecordingState() == 3) {
                    audioRecord.stop();
                }
                audioRecord.release();
            } catch (Throwable th) {
                Log.e(SystemLoopbackRecorder2.TAG, "Destroy AudioRecord failed." + th.getMessage(), new Object[0]);
            }
        }

        private void a(int i) {
            try {
                AudioManager audioManager = this.b;
                if (audioManager != null) {
                    audioManager.setMode(i);
                }
            } catch (Throwable th) {
                Log.e(SystemLoopbackRecorder2.TAG, "Set audio mode exception " + th.getMessage(), new Object[0]);
            }
        }
    }
}
