package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwww {
    static {
        MediaCodecAdapter.Factory factory = MediaCodecAdapter.Factory.DEFAULT;
    }

    public static MediaCodecAdapter.Factory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        return new DefaultMediaCodecAdapterFactory(context);
    }
}
