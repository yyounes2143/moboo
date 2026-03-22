package com.tencent.vod.flutter.tools;

import android.graphics.Rect;
import android.graphics.YuvImage;
import android.os.Bundle;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.vod.flutter.FTXEvent;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXV2LiveTools {
    public static Bundle buildNetBundle(V2TXLiveDef.V2TXLivePlayerStatistics v2TXLivePlayerStatistics) {
        Bundle bundle = new Bundle();
        if (v2TXLivePlayerStatistics != null) {
            bundle.putInt("CPU_USAGE", v2TXLivePlayerStatistics.appCpu);
            bundle.putInt("VIDEO_WIDTH", v2TXLivePlayerStatistics.width);
            bundle.putInt("VIDEO_HEIGHT", v2TXLivePlayerStatistics.height);
            bundle.putInt("NET_SPEED", v2TXLivePlayerStatistics.netSpeed);
            bundle.putInt("VIDEO_FPS", v2TXLivePlayerStatistics.fps);
            bundle.putInt("VIDEO_BITRATE", v2TXLivePlayerStatistics.videoBitrate);
            bundle.putInt("AUDIO_BITRATE", v2TXLivePlayerStatistics.audioBitrate);
            bundle.putInt("NET_JITTER", v2TXLivePlayerStatistics.jitterBufferDelay);
            bundle.putInt(FTXEvent.TUINetConst.NET_STATUS_SYSTEM_CPU, v2TXLivePlayerStatistics.systemCpu);
            bundle.putInt(FTXEvent.TUINetConst.NET_STATUS_VIDEO_LOSS, v2TXLivePlayerStatistics.videoPacketLoss);
            bundle.putInt(FTXEvent.TUINetConst.NET_STATUS_AUDIO_LOSS, v2TXLivePlayerStatistics.audioPacketLoss);
            bundle.putInt(FTXEvent.TUINetConst.NET_STATUS_AUDIO_TOTAL_BLOCK_TIME, v2TXLivePlayerStatistics.audioTotalBlockTime);
            bundle.putInt(FTXEvent.TUINetConst.NET_STATUS_VIDEO_TOTAL_BLOCK_TIME, v2TXLivePlayerStatistics.videoTotalBlockTime);
            bundle.putInt(FTXEvent.TUINetConst.NET_STATUS_VIDEO_BLOCK_RATE, v2TXLivePlayerStatistics.videoBlockRate);
            bundle.putInt(FTXEvent.TUINetConst.NET_STATUS_AUDIO_BLOCK_RATE, v2TXLivePlayerStatistics.audioBlockRate);
            bundle.putInt("RTT", v2TXLivePlayerStatistics.rtt);
        }
        return bundle;
    }

    public static V2TXLiveDef.V2TXLiveRotation transRotationFromDegree(int i) {
        if (i <= 0) {
            return V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation0;
        }
        if (i <= 90) {
            return V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation90;
        }
        if (i <= 180) {
            return V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation180;
        }
        return V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation270;
    }

    public static ByteBuffer yuv420ToARGB8888(ByteBuffer byteBuffer, int i, int i2) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        YuvImage yuvImage = new YuvImage(bArr, 35, i, i2, null);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        yuvImage.compressToJpeg(new Rect(0, 0, i, i2), 100, byteArrayOutputStream);
        return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
    }
}
