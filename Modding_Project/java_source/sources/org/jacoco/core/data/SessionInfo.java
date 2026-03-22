package org.jacoco.core.data;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class SessionInfo implements Comparable<SessionInfo> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13504Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f13505Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.lang.Comparable
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public int compareTo(SessionInfo sessionInfo) {
        long j = this.f13504Wwwwwwwwwwwwwwwwwwwwwwww;
        long j2 = sessionInfo.f13504Wwwwwwwwwwwwwwwwwwwwwwww;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        return 0;
    }

    public String toString() {
        return "SessionInfo[" + this.f13505Wwwwwwwwwwwwwwwwwwwwwwwww + "]";
    }
}
