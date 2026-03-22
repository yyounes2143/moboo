package com.changdu.component.httpbiz;

import java.util.Comparator;
import kotlin.jvm.functions.Function2;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class e implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Function2 f5336a;

    public e(f fVar) {
        this.f5336a = fVar;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        return ((Number) this.f5336a.invoke(obj, obj2)).intValue();
    }

    public /* synthetic */ e(f fVar, int i) {
        this(fVar);
    }
}
