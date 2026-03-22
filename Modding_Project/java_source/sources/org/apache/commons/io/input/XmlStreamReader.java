package org.apache.commons.io.input;

import com.tencent.thumbplayer.tcmedia.core.common.TPPixelFormat;
import java.io.IOException;
import java.io.Reader;
import java.util.regex.Pattern;
import org.apache.commons.io.ByteOrderMark;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class XmlStreamReader extends Reader implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Reader f13415Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ByteOrderMark[] f13414Wwwwwwwwwwwwwwwwwwwwwwww = {ByteOrderMark.UTF_8, ByteOrderMark.UTF_16BE, ByteOrderMark.UTF_16LE, ByteOrderMark.UTF_32BE, ByteOrderMark.UTF_32LE};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ByteOrderMark[] f13413Wwwwwwwwwwwwwwwwwwwwwww = {new ByteOrderMark("UTF-8", 60, 63, 120, 109), new ByteOrderMark("UTF-16BE", 0, 60, 0, 63), new ByteOrderMark("UTF-16LE", 60, 0, 63, 0), new ByteOrderMark("UTF-32BE", 0, 0, 0, 60, 0, 0, 0, 63, 0, 0, 0, 120, 0, 0, 0, 109), new ByteOrderMark("UTF-32LE", 60, 0, 0, 0, 63, 0, 0, 0, 120, 0, 0, 0, 109, 0, 0, 0), new ByteOrderMark("CP1047", 76, 111, TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 148)};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f13412Wwwwwwwwwwwwwwwwwwwwww = Pattern.compile("charset=[\"']?([.[^; \"']]*)[\"']?");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f13411Wwwwwwwwwwwwwwwwwwwww = Pattern.compile("<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:'.[^']*'))", 8);

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13415Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        return this.f13415Wwwwwwwwwwwwwwwwwwwwwwwww.read(cArr, i, i2);
    }
}
