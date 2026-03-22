package com.appsflyer.internal;

import android.content.Intent;
import android.os.Parcelable;
import com.appsflyer.AFLogger;
import java.util.ConcurrentModificationException;
import kotlin.Function;
import kotlin.Result;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@SourceDebugExtension({"SMAP\nAFIntentWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AFIntentWrapper.kt\ncom/appsflyer/internal/util/AFIntentWrapper\n+ 2 MultiCatch.kt\ncom/appsflyer/internal/util/MultiCatchKt\n*L\n1#1,111:1\n16#2,7:112\n*S KotlinDebug\n*F\n+ 1 AFIntentWrapper.kt\ncom/appsflyer/internal/util/AFIntentWrapper\n*L\n84#1:112,7\n*E\n"})
/* loaded from: classes3.dex */
public final class AFj1gSDK {
    @NotNull
    final Intent getCurrencyIso4217Code;

    public AFj1gSDK(@NotNull Intent intent) {
        this.getCurrencyIso4217Code = intent;
    }

    private final <T> T getRevenue(Function0<? extends T> function0, String str, T t, boolean z) {
        Object obj;
        synchronized (this.getCurrencyIso4217Code) {
            try {
                Result.Companion companion = Result.Companion;
                Object m438constructorimpl = Result.m438constructorimpl(function0.invoke());
                KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(ConcurrentModificationException.class), Reflection.getOrCreateKotlinClass(ArrayIndexOutOfBoundsException.class)};
                Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(m438constructorimpl);
                if (m441exceptionOrNullimpl != null) {
                    if (ArraysKt.contains(kClassArr, Reflection.getOrCreateKotlinClass(m441exceptionOrNullimpl.getClass()))) {
                        if (z) {
                            obj = getRevenue(function0, str, t, false);
                        } else {
                            AFLogger.afErrorLog(str, m441exceptionOrNullimpl, false, false);
                            obj = t;
                        }
                        m438constructorimpl = Result.m438constructorimpl(obj);
                    } else {
                        throw m441exceptionOrNullimpl;
                    }
                }
                Throwable m441exceptionOrNullimpl2 = Result.m441exceptionOrNullimpl(m438constructorimpl);
                if (m441exceptionOrNullimpl2 == null) {
                    t = m438constructorimpl;
                } else {
                    AFLogger.afErrorLog(str, m441exceptionOrNullimpl2, false, false);
                }
            }
        }
        return t;
    }

    @Nullable
    public final String AFAdRevenueData(@NotNull final String str) {
        Function0<String> function0 = new Function0<String>() { // from class: com.appsflyer.internal.AFj1gSDK.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            /* renamed from: getMediationNetwork */
            public final String invoke() {
                return AFj1gSDK.this.getCurrencyIso4217Code.getStringExtra(str);
            }
        };
        return (String) getRevenue(function0, "Error while trying to read " + str + " extra from intent", null, true);
    }

    @Nullable
    public final <T extends Parcelable> T H_(@NotNull final String str) {
        Function function = new Function0<T>() { // from class: com.appsflyer.internal.AFj1gSDK.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            /* renamed from: J_ */
            public final Parcelable invoke() {
                return AFj1gSDK.this.getCurrencyIso4217Code.getParcelableExtra(str);
            }
        };
        return (T) getRevenue(function, "Error while trying to read " + str + " extra from intent", null, true);
    }

    @Nullable
    public final Intent I_(@NotNull final String str, final long j) {
        Function0<Intent> function0 = new Function0<Intent>() { // from class: com.appsflyer.internal.AFj1gSDK.5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: K_ */
            public final Intent invoke() {
                return AFj1gSDK.this.getCurrencyIso4217Code.putExtra(str, j);
            }
        };
        return (Intent) getRevenue(function0, "Error while trying to write " + str + " extra to intent", null, true);
    }

    public final boolean getMediationNetwork(@NotNull final String str) {
        Function0<Boolean> function0 = new Function0<Boolean>() { // from class: com.appsflyer.internal.AFj1gSDK.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: getCurrencyIso4217Code */
            public final Boolean invoke() {
                return Boolean.valueOf(AFj1gSDK.this.getCurrencyIso4217Code.hasExtra(str));
            }
        };
        Boolean bool = (Boolean) getRevenue(function0, "Error while trying to check presence of " + str + " extra from intent", Boolean.TRUE, true);
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }
}
