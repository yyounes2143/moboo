package com.changdu.component.pay.google;

import com.changdu.component.core.CDComponent;
import com.changdu.component.pay.google.localdb.LocalBillingDb;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class G extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public static final G f5348a = new G();

    public G() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return LocalBillingDb.Companion.getInstance(CDComponent.context);
    }
}
