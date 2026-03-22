package com.changdu.component.pay.google.localdb;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.android.billingclient.api.SkuDetails;
import com.applovin.sdk.AppLovinEventParameters;
import com.changdu.component.pay.google.localdb.CdSkuDetailsDao;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class CdSkuDetailsDao_Impl implements CdSkuDetailsDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<CdSkuDetails> __insertionAdapterOfCdSkuDetails;
    private final EntityDeletionOrUpdateAdapter<CdSkuDetails> __updateAdapterOfCdSkuDetails;

    public CdSkuDetailsDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfCdSkuDetails = new EntityInsertionAdapter<CdSkuDetails>(roomDatabase) { // from class: com.changdu.component.pay.google.localdb.CdSkuDetailsDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `CdSkuDetails` (`sku`,`originalJson`,`type`,`price`,`title`,`description`) VALUES (?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, CdSkuDetails cdSkuDetails) {
                if (cdSkuDetails.getSku() == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, cdSkuDetails.getSku());
                }
                if (cdSkuDetails.getOriginalJson() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, cdSkuDetails.getOriginalJson());
                }
                if (cdSkuDetails.getType() == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, cdSkuDetails.getType());
                }
                if (cdSkuDetails.getPrice() == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, cdSkuDetails.getPrice());
                }
                if (cdSkuDetails.getTitle() == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindString(5, cdSkuDetails.getTitle());
                }
                if (cdSkuDetails.getDescription() == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindString(6, cdSkuDetails.getDescription());
                }
            }
        };
        this.__updateAdapterOfCdSkuDetails = new EntityDeletionOrUpdateAdapter<CdSkuDetails>(roomDatabase) { // from class: com.changdu.component.pay.google.localdb.CdSkuDetailsDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `CdSkuDetails` SET `sku` = ?,`originalJson` = ?,`type` = ?,`price` = ?,`title` = ?,`description` = ? WHERE `sku` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, CdSkuDetails cdSkuDetails) {
                if (cdSkuDetails.getSku() == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, cdSkuDetails.getSku());
                }
                if (cdSkuDetails.getOriginalJson() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, cdSkuDetails.getOriginalJson());
                }
                if (cdSkuDetails.getType() == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, cdSkuDetails.getType());
                }
                if (cdSkuDetails.getPrice() == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, cdSkuDetails.getPrice());
                }
                if (cdSkuDetails.getTitle() == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindString(5, cdSkuDetails.getTitle());
                }
                if (cdSkuDetails.getDescription() == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindString(6, cdSkuDetails.getDescription());
                }
                if (cdSkuDetails.getSku() == null) {
                    supportSQLiteStatement.bindNull(7);
                } else {
                    supportSQLiteStatement.bindString(7, cdSkuDetails.getSku());
                }
            }
        };
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.EMPTY_LIST;
    }

    @Override // com.changdu.component.pay.google.localdb.CdSkuDetailsDao
    public CdSkuDetails getById(String str) {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM CdSkuDetails WHERE sku = ?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        CdSkuDetails cdSkuDetails = null;
        String string6 = null;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, AppLovinEventParameters.PRODUCT_IDENTIFIER);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "originalJson");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "type");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "price");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, CampaignEx.JSON_KEY_TITLE);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "description");
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
                cdSkuDetails = new CdSkuDetails(string, string2, string3, string4, string5, string6);
            }
            return cdSkuDetails;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.changdu.component.pay.google.localdb.CdSkuDetailsDao
    public List<CdSkuDetails> getInappSkuDetails() {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM CdSkuDetails WHERE type = 'inapp'", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, AppLovinEventParameters.PRODUCT_IDENTIFIER);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "originalJson");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "type");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "price");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, CampaignEx.JSON_KEY_TITLE);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "description");
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
                arrayList.add(new CdSkuDetails(string, string2, string3, string4, string5, string6));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.changdu.component.pay.google.localdb.CdSkuDetailsDao
    public List<CdSkuDetails> getSubscriptionSkuDetails() {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM CdSkuDetails WHERE type = 'subs'", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, AppLovinEventParameters.PRODUCT_IDENTIFIER);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "originalJson");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "type");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "price");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, CampaignEx.JSON_KEY_TITLE);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "description");
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
                arrayList.add(new CdSkuDetails(string, string2, string3, string4, string5, string6));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.changdu.component.pay.google.localdb.CdSkuDetailsDao
    public void insert(CdSkuDetails cdSkuDetails) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfCdSkuDetails.insert((EntityInsertionAdapter<CdSkuDetails>) cdSkuDetails);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.changdu.component.pay.google.localdb.CdSkuDetailsDao
    public void update(CdSkuDetails cdSkuDetails) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfCdSkuDetails.handle(cdSkuDetails);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.changdu.component.pay.google.localdb.CdSkuDetailsDao
    public SkuDetails insert(SkuDetails skuDetails) {
        this.__db.beginTransaction();
        try {
            SkuDetails insert = CdSkuDetailsDao.DefaultImpls.insert(this, skuDetails);
            this.__db.setTransactionSuccessful();
            return insert;
        } finally {
            this.__db.endTransaction();
        }
    }
}
