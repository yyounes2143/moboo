package com.fluttercandies.flutter_image_compress.exif;

import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayInputStream;
import java.io.File;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\b¨\u0006\u000f"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/exif/Exif;", "", "<init>", "()V", "", "_bytes", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([B)I", "Ljava/io/File;", "file", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)I", "byteArray", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Exif {
    @NotNull
    public static final Exif INSTANCE = new Exif();

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull byte[] bArr) {
        try {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr);
        } catch (Exception unused) {
            return 0;
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) {
        try {
            return new ExifInterface(file.getAbsolutePath()).getRotationDegrees();
        } catch (Exception unused) {
            return 0;
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr) {
        return new ExifInterface(new ByteArrayInputStream(bArr)).getRotationDegrees();
    }
}
