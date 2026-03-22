package j$.util;

import java.io.Serializable;
import java.util.function.Function;
/* renamed from: j$.util.c  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2166c implements java.util.Comparator, Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11828a;
    public final /* synthetic */ java.util.Comparator b;
    public final /* synthetic */ Object c;

    public /* synthetic */ C2166c(java.util.Comparator comparator, Object obj, int i) {
        this.f11828a = i;
        this.b = comparator;
        this.c = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f11828a) {
            case 0:
                int compare = this.b.compare(obj, obj2);
                return compare != 0 ? compare : ((java.util.Comparator) this.c).compare(obj, obj2);
            default:
                Function function = (Function) this.c;
                return this.b.compare(function.apply(obj), function.apply(obj2));
        }
    }
}
