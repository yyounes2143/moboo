package com.tencent.thumbplayer.tcmedia.g.b;

import android.media.MediaCodec;
import com.tencent.thumbplayer.tcmedia.g.f.a;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes6.dex */
public final class g extends f {
    public g(MediaCodec mediaCodec, e eVar) {
        super(mediaCodec, eVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.f
    public final a.b a(e eVar) {
        if (com.tencent.thumbplayer.tcmedia.g.f.a.a(this, eVar)) {
            int i = eVar.b;
            b bVar = this.g;
            if (i <= bVar.f10618a && eVar.c <= bVar.b && com.tencent.thumbplayer.tcmedia.g.h.c.a(this, eVar) <= this.g.c) {
                if (eVar.a(this.e)) {
                    return a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION;
                }
                return a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION;
            }
        }
        return a.b.KEEP_CODEC_RESULT_NO;
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.f
    public final boolean j() {
        if (super.j() && this.f != null && this.e.d == 0) {
            return true;
        }
        return false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.f
    public final String toString() {
        return "VideoCodecWrapper[" + hashCode() + AbstractJsonLexerKt.END_LIST;
    }
}
