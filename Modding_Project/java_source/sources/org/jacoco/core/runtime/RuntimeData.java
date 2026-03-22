package org.jacoco.core.runtime;

import org.jacoco.core.data.ExecutionData;
import org.jacoco.core.data.ExecutionDataStore;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class RuntimeData {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ExecutionDataStore f13564Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ExecutionDataStore();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f13562Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "<none>";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13563Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = System.currentTimeMillis();

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object[] objArr) {
        objArr[0] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Long) objArr[0], (String) objArr[1], ((Integer) objArr[2]).intValue()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public ExecutionData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Long l, String str, int i) {
        ExecutionData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        synchronized (this.f13564Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13564Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(l, str, i);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Object[]) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Object[]) obj);
        }
        return super.equals(obj);
    }
}
