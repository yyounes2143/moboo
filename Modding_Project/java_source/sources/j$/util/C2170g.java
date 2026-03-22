package j$.util;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.function.DoubleConsumer;
/* renamed from: j$.util.g  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2170g implements DoubleConsumer {

    /* renamed from: a  reason: collision with root package name */
    public double f11849a;
    public double b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.count++;
        this.b += d;
        c(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    public final void b(C2170g c2170g) {
        this.count += c2170g.count;
        this.b += c2170g.b;
        c(c2170g.sum);
        c(c2170g.f11849a);
        this.min = Math.min(this.min, c2170g.min);
        this.max = Math.max(this.max, c2170g.max);
    }

    public final void c(double d) {
        double d2 = d - this.f11849a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f11849a = (d4 - d3) - d2;
        this.sum = d4;
    }

    public final String toString() {
        double d;
        String simpleName = C2170g.class.getSimpleName();
        Long valueOf = Long.valueOf(this.count);
        double d2 = this.sum + this.f11849a;
        if (Double.isNaN(d2) && Double.isInfinite(this.b)) {
            d2 = this.b;
        }
        Double valueOf2 = Double.valueOf(d2);
        Double valueOf3 = Double.valueOf(this.min);
        if (this.count > 0) {
            double d3 = this.sum + this.f11849a;
            if (Double.isNaN(d3) && Double.isInfinite(this.b)) {
                d3 = this.b;
            }
            d = d3 / this.count;
        } else {
            d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", simpleName, valueOf, valueOf2, valueOf3, Double.valueOf(d), Double.valueOf(this.max));
    }
}
