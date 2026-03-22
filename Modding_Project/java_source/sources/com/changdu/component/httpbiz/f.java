package com.changdu.component.httpbiz;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class f extends Lambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public static final f f5337a = new f();

    public f() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return Integer.valueOf(StringsKt.compareTo((String) obj, (String) obj2, true));
    }
}
