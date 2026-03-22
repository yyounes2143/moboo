package com.changdu.mobovideo.utils;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.utils.CDAppProtect$handleConfig$2", f = "CDAppProtect.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nCDAppProtect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDAppProtect.kt\ncom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2\n+ 2 GsonUtil.kt\ncom/changdu/mobovideo/utils/GsonUtil\n*L\n1#1,300:1\n39#2,8:301\n*S KotlinDebug\n*F\n+ 1 CDAppProtect.kt\ncom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2\n*L\n281#1:301,8\n*E\n"})
/* loaded from: classes3.dex */
public final class CDAppProtect$handleConfig$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $appProtectConfig;
    final /* synthetic */ boolean $save;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDAppProtect$handleConfig$2(String str, boolean z, Continuation<? super CDAppProtect$handleConfig$2> continuation) {
        super(2, continuation);
        this.$appProtectConfig = str;
        this.$save = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDAppProtect$handleConfig$2(this.$appProtectConfig, this.$save, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ArrayList arrayList;
        ArrayList arrayList2;
        String str;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            String str2 = this.$appProtectConfig;
            if (str2 == null || StringsKt.isBlank(str2)) {
                arrayList = CDAppProtect.f5648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                synchronized (arrayList) {
                    arrayList2 = CDAppProtect.f5648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    arrayList2.clear();
                    Unit unit = Unit.INSTANCE;
                }
                str = "";
            } else {
                GsonUtil gsonUtil = GsonUtil.INSTANCE;
                String str3 = this.$appProtectConfig;
                Object obj2 = null;
                if (str3 != null) {
                    try {
                        obj2 = new Gson().fromJson(str3, new TypeToken<ArrayList<CDAppProtectModel>>() { // from class: com.changdu.mobovideo.utils.CDAppProtect$handleConfig$2$invokeSuspend$$inlined$fromJsonStr$1
                        }.getType());
                    } catch (Exception unused) {
                    }
                }
                ArrayList arrayList6 = (ArrayList) obj2;
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                arrayList3 = CDAppProtect.f5648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                synchronized (arrayList3) {
                    arrayList4 = CDAppProtect.f5648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    arrayList4.clear();
                    arrayList5 = CDAppProtect.f5648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    arrayList5.addAll(arrayList6);
                }
                str = this.$appProtectConfig;
            }
            if (this.$save) {
                try {
                    ALocalCache Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppBizDataManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CDAppProtect.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str);
                    }
                } catch (Exception unused2) {
                }
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDAppProtect$handleConfig$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
