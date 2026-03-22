package org.objectweb.asm.tree.analysis;

import androidx.exifinterface.media.ExifInterface;
import org.objectweb.asm.Type;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class BasicValue implements Value {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Type f14164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BasicValue f14163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new BasicValue(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BasicValue f14162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new BasicValue(Type.f14086Wwwwwwwwwwwwwwwwwwwwwwwww);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BasicValue f14161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new BasicValue(Type.f14085Wwwwwwwwwwwwwwwwwwwwwwww);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BasicValue f14160Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new BasicValue(Type.f14084Wwwwwwwwwwwwwwwwwwwwwww);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BasicValue f14159Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new BasicValue(Type.f14083Wwwwwwwwwwwwwwwwwwwwww);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BasicValue f14158Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new BasicValue(Type.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("java/lang/Object"));

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BasicValue f14157Wwwwwwwwwwwwwwwwwwwwwwwwwww = new BasicValue(Type.f14091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);

    public BasicValue(Type type) {
        this.f14164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = type;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BasicValue)) {
            return false;
        }
        Type type = this.f14164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (type == null) {
            if (((BasicValue) obj).f14164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                return true;
            }
            return false;
        }
        return type.equals(((BasicValue) obj).f14164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public int hashCode() {
        Type type = this.f14164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (type == null) {
            return 0;
        }
        return type.hashCode();
    }

    public String toString() {
        if (this == f14163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return ".";
        }
        if (this == f14157Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return ExifInterface.GPS_MEASUREMENT_IN_PROGRESS;
        }
        if (this == f14158Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return "R";
        }
        return this.f14164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
