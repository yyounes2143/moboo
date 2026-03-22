package com.changdu.component.pay.google.localdb;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.room.Update;
import com.android.billingclient.api.SkuDetails;
import com.applovin.sdk.AppLovinEventParameters;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Dao
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007H'J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007H'J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0017J\u0010\u0010\t\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003H'J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003H'¨\u0006\u000f"}, d2 = {"Lcom/changdu/component/pay/google/localdb/CdSkuDetailsDao;", "", "getById", "Lcom/changdu/component/pay/google/localdb/CdSkuDetails;", AppLovinEventParameters.PRODUCT_IDENTIFIER, "", "getInappSkuDetails", "", "getSubscriptionSkuDetails", "insert", "Lcom/android/billingclient/api/SkuDetails;", "skuDetails", "", "cdSkuDetails", "update", "pay-google_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface CdSkuDetailsDao {

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        @Transaction
        @NotNull
        public static SkuDetails insert(@NotNull CdSkuDetailsDao cdSkuDetailsDao, @NotNull SkuDetails skuDetails) {
            cdSkuDetailsDao.insert(new CdSkuDetails(skuDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), skuDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), skuDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), skuDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), skuDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), skuDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            return skuDetails;
        }
    }

    @Query("SELECT * FROM CdSkuDetails WHERE sku = :sku")
    @Nullable
    CdSkuDetails getById(@NotNull String str);

    @Query("SELECT * FROM CdSkuDetails WHERE type = 'inapp'")
    @NotNull
    List<CdSkuDetails> getInappSkuDetails();

    @Query("SELECT * FROM CdSkuDetails WHERE type = 'subs'")
    @NotNull
    List<CdSkuDetails> getSubscriptionSkuDetails();

    @Transaction
    @NotNull
    SkuDetails insert(@NotNull SkuDetails skuDetails);

    @Insert(onConflict = 1)
    void insert(@NotNull CdSkuDetails cdSkuDetails);

    @Update(onConflict = 1)
    void update(@NotNull CdSkuDetails cdSkuDetails);
}
