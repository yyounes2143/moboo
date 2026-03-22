package com.changdu.component.pay.google.localdb;

import androidx.room.TypeConverter;
import com.android.billingclient.api.Purchase;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0007¨\u0006\t"}, d2 = {"Lcom/changdu/component/pay/google/localdb/PurchaseTypeConverter;", "", "()V", "toPurchase", "Lcom/android/billingclient/api/Purchase;", "data", "", "toString", FirebaseAnalytics.Event.PURCHASE, "pay-google_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PurchaseTypeConverter {
    @TypeConverter
    @NotNull
    public final Purchase toPurchase(@NotNull String str) {
        List split$default = StringsKt.split$default((CharSequence) str, new char[]{'|'}, false, 0, 6, (Object) null);
        return new Purchase((String) split$default.get(0), (String) split$default.get(1));
    }

    @TypeConverter
    @NotNull
    public final String toString(@NotNull Purchase purchase) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = purchase.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = purchase.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + "|" + Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
