package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.charset.Charset;
/* compiled from: Proguard */
@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes5.dex */
public final class Charsets {
    @J2ktIncompatible
    @GwtIncompatible
    public static final Charset US_ASCII = Charset.forName(C.ASCII_NAME);
    public static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    public static final Charset UTF_8 = Charset.forName("UTF-8");
    @J2ktIncompatible
    @GwtIncompatible
    public static final Charset UTF_16BE = Charset.forName("UTF-16BE");
    @J2ktIncompatible
    @GwtIncompatible
    public static final Charset UTF_16LE = Charset.forName("UTF-16LE");
    @J2ktIncompatible
    @GwtIncompatible
    public static final Charset UTF_16 = Charset.forName(C.UTF16_NAME);

    private Charsets() {
    }
}
