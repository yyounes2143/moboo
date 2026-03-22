package org.jacoco.core.data;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class ExecutionData {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean[] f13498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f13499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ExecutionData(long j, String str, int i) {
        this.f13500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f13499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f13498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new boolean[i];
    }

    public boolean[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, String str, int i) throws IllegalStateException {
        if (this.f13500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == j) {
            if (this.f13499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(str)) {
                if (this.f13498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length == i) {
                    return;
                }
                throw new IllegalStateException(String.format("Incompatible execution data for class %s with id %016x.", str, Long.valueOf(j)));
            }
            throw new IllegalStateException(String.format("Different class names %s and %s for id %016x.", this.f13499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, Long.valueOf(j)));
        }
        throw new IllegalStateException(String.format("Different ids (%016x and %016x).", Long.valueOf(this.f13500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), Long.valueOf(j)));
    }

    public String toString() {
        return String.format("ExecutionData[name=%s, id=%016x]", this.f13499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Long.valueOf(this.f13500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }
}
