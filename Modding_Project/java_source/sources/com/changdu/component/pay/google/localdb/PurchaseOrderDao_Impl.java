package com.changdu.component.pay.google.localdb;

import android.database.Cursor;
import androidx.core.app.NotificationCompat;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.applovin.sdk.AppLovinEventParameters;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class PurchaseOrderDao_Impl implements PurchaseOrderDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<PurchaseOrder> __insertionAdapterOfPurchaseOrder;
    private final SharedSQLiteStatement __preparedStmtOfDeleteByCdOrderId;
    private final SharedSQLiteStatement __preparedStmtOfDeleteByPurchaseToken;
    private final PurchaseTypeConverter __purchaseTypeConverter = new PurchaseTypeConverter();
    private final EntityDeletionOrUpdateAdapter<PurchaseOrder> __updateAdapterOfPurchaseOrder;

    public PurchaseOrderDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfPurchaseOrder = new EntityInsertionAdapter<PurchaseOrder>(roomDatabase) { // from class: com.changdu.component.pay.google.localdb.PurchaseOrderDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `purchase_order` (`cdOrderId`,`jumpUrl`,`sku`,`skuType`,`purchaseToken`,`purchaseData`,`status`) VALUES (?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, PurchaseOrder purchaseOrder) {
                if (purchaseOrder.getCdOrderId() == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, purchaseOrder.getCdOrderId());
                }
                if (purchaseOrder.getJumpUrl() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, purchaseOrder.getJumpUrl());
                }
                if (purchaseOrder.getSku() == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, purchaseOrder.getSku());
                }
                if (purchaseOrder.getSkuType() == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, purchaseOrder.getSkuType());
                }
                if (purchaseOrder.getPurchaseToken() == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindString(5, purchaseOrder.getPurchaseToken());
                }
                String purchaseTypeConverter = PurchaseOrderDao_Impl.this.__purchaseTypeConverter.toString(purchaseOrder.getPurchaseData());
                if (purchaseTypeConverter == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindString(6, purchaseTypeConverter);
                }
                supportSQLiteStatement.bindLong(7, purchaseOrder.getStatus());
            }
        };
        this.__updateAdapterOfPurchaseOrder = new EntityDeletionOrUpdateAdapter<PurchaseOrder>(roomDatabase) { // from class: com.changdu.component.pay.google.localdb.PurchaseOrderDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `purchase_order` SET `cdOrderId` = ?,`jumpUrl` = ?,`sku` = ?,`skuType` = ?,`purchaseToken` = ?,`purchaseData` = ?,`status` = ? WHERE `cdOrderId` = ? AND `purchaseToken` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, PurchaseOrder purchaseOrder) {
                if (purchaseOrder.getCdOrderId() == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, purchaseOrder.getCdOrderId());
                }
                if (purchaseOrder.getJumpUrl() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, purchaseOrder.getJumpUrl());
                }
                if (purchaseOrder.getSku() == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, purchaseOrder.getSku());
                }
                if (purchaseOrder.getSkuType() == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, purchaseOrder.getSkuType());
                }
                if (purchaseOrder.getPurchaseToken() == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindString(5, purchaseOrder.getPurchaseToken());
                }
                String purchaseTypeConverter = PurchaseOrderDao_Impl.this.__purchaseTypeConverter.toString(purchaseOrder.getPurchaseData());
                if (purchaseTypeConverter == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindString(6, purchaseTypeConverter);
                }
                supportSQLiteStatement.bindLong(7, purchaseOrder.getStatus());
                if (purchaseOrder.getCdOrderId() == null) {
                    supportSQLiteStatement.bindNull(8);
                } else {
                    supportSQLiteStatement.bindString(8, purchaseOrder.getCdOrderId());
                }
                if (purchaseOrder.getPurchaseToken() == null) {
                    supportSQLiteStatement.bindNull(9);
                } else {
                    supportSQLiteStatement.bindString(9, purchaseOrder.getPurchaseToken());
                }
            }
        };
        this.__preparedStmtOfDeleteByCdOrderId = new SharedSQLiteStatement(roomDatabase) { // from class: com.changdu.component.pay.google.localdb.PurchaseOrderDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM purchase_order WHERE cdOrderId = ?";
            }
        };
        this.__preparedStmtOfDeleteByPurchaseToken = new SharedSQLiteStatement(roomDatabase) { // from class: com.changdu.component.pay.google.localdb.PurchaseOrderDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM purchase_order WHERE purchaseToken = ?";
            }
        };
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.EMPTY_LIST;
    }

    @Override // com.changdu.component.pay.google.localdb.PurchaseOrderDao
    public void deleteByCdOrderId(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteByCdOrderId.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteByCdOrderId.release(acquire);
        }
    }

    @Override // com.changdu.component.pay.google.localdb.PurchaseOrderDao
    public void deleteByPurchaseToken(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteByPurchaseToken.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteByPurchaseToken.release(acquire);
        }
    }

    @Override // com.changdu.component.pay.google.localdb.PurchaseOrderDao
    public List<PurchaseOrder> getAll() {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM purchase_order", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "cdOrderId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "jumpUrl");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, AppLovinEventParameters.PRODUCT_IDENTIFIER);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "skuType");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "purchaseToken");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "purchaseData");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, NotificationCompat.CATEGORY_STATUS);
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(columnIndexOrThrow)) {
                    string = null;
                } else {
                    string = query.getString(columnIndexOrThrow);
                }
                if (query.isNull(columnIndexOrThrow2)) {
                    string2 = null;
                } else {
                    string2 = query.getString(columnIndexOrThrow2);
                }
                if (query.isNull(columnIndexOrThrow3)) {
                    string3 = null;
                } else {
                    string3 = query.getString(columnIndexOrThrow3);
                }
                if (query.isNull(columnIndexOrThrow4)) {
                    string4 = null;
                } else {
                    string4 = query.getString(columnIndexOrThrow4);
                }
                if (query.isNull(columnIndexOrThrow5)) {
                    string5 = null;
                } else {
                    string5 = query.getString(columnIndexOrThrow5);
                }
                if (query.isNull(columnIndexOrThrow6)) {
                    string6 = null;
                } else {
                    string6 = query.getString(columnIndexOrThrow6);
                }
                arrayList.add(new PurchaseOrder(string, string2, string3, string4, string5, this.__purchaseTypeConverter.toPurchase(string6), query.getInt(columnIndexOrThrow7)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.changdu.component.pay.google.localdb.PurchaseOrderDao
    public List<PurchaseOrder> getAllByStatus(int i) {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM purchase_order WHERE status = ?", 1);
        acquire.bindLong(1, i);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "cdOrderId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "jumpUrl");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, AppLovinEventParameters.PRODUCT_IDENTIFIER);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "skuType");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "purchaseToken");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "purchaseData");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, NotificationCompat.CATEGORY_STATUS);
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(columnIndexOrThrow)) {
                    string = null;
                } else {
                    string = query.getString(columnIndexOrThrow);
                }
                if (query.isNull(columnIndexOrThrow2)) {
                    string2 = null;
                } else {
                    string2 = query.getString(columnIndexOrThrow2);
                }
                if (query.isNull(columnIndexOrThrow3)) {
                    string3 = null;
                } else {
                    string3 = query.getString(columnIndexOrThrow3);
                }
                if (query.isNull(columnIndexOrThrow4)) {
                    string4 = null;
                } else {
                    string4 = query.getString(columnIndexOrThrow4);
                }
                if (query.isNull(columnIndexOrThrow5)) {
                    string5 = null;
                } else {
                    string5 = query.getString(columnIndexOrThrow5);
                }
                if (query.isNull(columnIndexOrThrow6)) {
                    string6 = null;
                } else {
                    string6 = query.getString(columnIndexOrThrow6);
                }
                arrayList.add(new PurchaseOrder(string, string2, string3, string4, string5, this.__purchaseTypeConverter.toPurchase(string6), query.getInt(columnIndexOrThrow7)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.changdu.component.pay.google.localdb.PurchaseOrderDao
    public PurchaseOrder getByCdOrderId(String str) {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM purchase_order WHERE cdOrderId = ?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        PurchaseOrder purchaseOrder = null;
        String string6 = null;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "cdOrderId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "jumpUrl");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, AppLovinEventParameters.PRODUCT_IDENTIFIER);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "skuType");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "purchaseToken");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "purchaseData");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, NotificationCompat.CATEGORY_STATUS);
            if (query.moveToFirst()) {
                if (query.isNull(columnIndexOrThrow)) {
                    string = null;
                } else {
                    string = query.getString(columnIndexOrThrow);
                }
                if (query.isNull(columnIndexOrThrow2)) {
                    string2 = null;
                } else {
                    string2 = query.getString(columnIndexOrThrow2);
                }
                if (query.isNull(columnIndexOrThrow3)) {
                    string3 = null;
                } else {
                    string3 = query.getString(columnIndexOrThrow3);
                }
                if (query.isNull(columnIndexOrThrow4)) {
                    string4 = null;
                } else {
                    string4 = query.getString(columnIndexOrThrow4);
                }
                if (query.isNull(columnIndexOrThrow5)) {
                    string5 = null;
                } else {
                    string5 = query.getString(columnIndexOrThrow5);
                }
                if (!query.isNull(columnIndexOrThrow6)) {
                    string6 = query.getString(columnIndexOrThrow6);
                }
                purchaseOrder = new PurchaseOrder(string, string2, string3, string4, string5, this.__purchaseTypeConverter.toPurchase(string6), query.getInt(columnIndexOrThrow7));
            }
            return purchaseOrder;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.changdu.component.pay.google.localdb.PurchaseOrderDao
    public PurchaseOrder getByPurchaseToken(String str) {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM purchase_order WHERE purchaseToken = ?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        PurchaseOrder purchaseOrder = null;
        String string6 = null;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "cdOrderId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "jumpUrl");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, AppLovinEventParameters.PRODUCT_IDENTIFIER);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "skuType");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "purchaseToken");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "purchaseData");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, NotificationCompat.CATEGORY_STATUS);
            if (query.moveToFirst()) {
                if (query.isNull(columnIndexOrThrow)) {
                    string = null;
                } else {
                    string = query.getString(columnIndexOrThrow);
                }
                if (query.isNull(columnIndexOrThrow2)) {
                    string2 = null;
                } else {
                    string2 = query.getString(columnIndexOrThrow2);
                }
                if (query.isNull(columnIndexOrThrow3)) {
                    string3 = null;
                } else {
                    string3 = query.getString(columnIndexOrThrow3);
                }
                if (query.isNull(columnIndexOrThrow4)) {
                    string4 = null;
                } else {
                    string4 = query.getString(columnIndexOrThrow4);
                }
                if (query.isNull(columnIndexOrThrow5)) {
                    string5 = null;
                } else {
                    string5 = query.getString(columnIndexOrThrow5);
                }
                if (!query.isNull(columnIndexOrThrow6)) {
                    string6 = query.getString(columnIndexOrThrow6);
                }
                purchaseOrder = new PurchaseOrder(string, string2, string3, string4, string5, this.__purchaseTypeConverter.toPurchase(string6), query.getInt(columnIndexOrThrow7));
            }
            return purchaseOrder;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.changdu.component.pay.google.localdb.PurchaseOrderDao
    public void insertPurchaseOrder(PurchaseOrder purchaseOrder) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfPurchaseOrder.insert((EntityInsertionAdapter<PurchaseOrder>) purchaseOrder);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.changdu.component.pay.google.localdb.PurchaseOrderDao
    public void updatePurchaseOrder(PurchaseOrder purchaseOrder) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfPurchaseOrder.handle(purchaseOrder);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }
}
