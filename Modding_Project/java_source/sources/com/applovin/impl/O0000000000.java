package com.applovin.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class O0000000000 {
    public static /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CharSequence charSequence, CharSequence[] charSequenceArr) {
        if (charSequence != null) {
            StringBuilder sb = new StringBuilder();
            if (charSequenceArr.length > 0) {
                sb.append(charSequenceArr[0]);
                for (int i = 1; i < charSequenceArr.length; i++) {
                    sb.append(charSequence);
                    sb.append(charSequenceArr[i]);
                }
            }
            return sb.toString();
        }
        throw new NullPointerException(TtmlNode.RUBY_DELIMITER);
    }
}
