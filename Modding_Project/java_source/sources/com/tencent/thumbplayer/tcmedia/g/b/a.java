package com.tencent.thumbplayer.tcmedia.g.b;

import android.media.MediaCodec;
import com.tencent.thumbplayer.tcmedia.g.f.a;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes6.dex */
public final class a extends f {
    public a(MediaCodec mediaCodec, e eVar) {
        super(mediaCodec, eVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.f
    public final a.b a(e eVar) {
        if (com.tencent.thumbplayer.tcmedia.g.f.a.a(this, eVar)) {
            return a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION;
        }
        return a.b.KEEP_CODEC_RESULT_NO;
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.f
    public final String toString() {
        return "AudioCodecWrapper[" + hashCode() + AbstractJsonLexerKt.END_LIST;
    }
}
