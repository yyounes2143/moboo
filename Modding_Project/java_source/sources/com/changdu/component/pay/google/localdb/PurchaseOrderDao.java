package com.changdu.component.pay.google.localdb;

import androidx.core.app.NotificationCompat;
import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Dao
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H'J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH'J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\f\u001a\u00020\rH'J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u0005H'J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\nH'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\nH'¨\u0006\u0014"}, d2 = {"Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao;", "", "deleteByCdOrderId", "", "cdOrderId", "", "deleteByPurchaseToken", "purchaseToken", "getAll", "", "Lcom/changdu/component/pay/google/localdb/PurchaseOrder;", "getAllByStatus", NotificationCompat.CATEGORY_STATUS, "", "getByCdOrderId", "getByPurchaseToken", "insertPurchaseOrder", "purchaseOrder", "updatePurchaseOrder", "newPurchaseOrder", "pay-google_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface PurchaseOrderDao {
    @Query("DELETE FROM purchase_order WHERE cdOrderId = :cdOrderId")
    void deleteByCdOrderId(@NotNull String str);

    @Query("DELETE FROM purchase_order WHERE purchaseToken = :purchaseToken")
    void deleteByPurchaseToken(@NotNull String str);

    @Query("SELECT * FROM purchase_order")
    @NotNull
    List<PurchaseOrder> getAll();

    @Query("SELECT * FROM purchase_order WHERE status = :status")
    @NotNull
    List<PurchaseOrder> getAllByStatus(int i);

    @Query("SELECT * FROM purchase_order WHERE cdOrderId = :cdOrderId")
    @Nullable
    PurchaseOrder getByCdOrderId(@NotNull String str);

    @Query("SELECT * FROM purchase_order WHERE purchaseToken = :purchaseToken")
    @Nullable
    PurchaseOrder getByPurchaseToken(@NotNull String str);

    @Insert(onConflict = 1)
    void insertPurchaseOrder(@NotNull PurchaseOrder purchaseOrder);

    @Update(onConflict = 1)
    void updatePurchaseOrder(@NotNull PurchaseOrder purchaseOrder);
}
