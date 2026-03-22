package org.jacoco.core.data;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class ExecutionDataStore implements IExecutionDataVisitor {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Long, ExecutionData> f13502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f13501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet();

    public ExecutionData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Long l, String str, int i) {
        ExecutionData executionData = this.f13502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(l);
        if (executionData == null) {
            ExecutionData executionData2 = new ExecutionData(l.longValue(), str, i);
            this.f13502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(l, executionData2);
            this.f13501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(str);
            return executionData2;
        }
        executionData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(l.longValue(), str, i);
        return executionData;
    }
}
