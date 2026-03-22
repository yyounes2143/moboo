package com.changdu.component.pay.google.localdb;

import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.applovin.sdk.AppLovinEventParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class LocalBillingDb_Impl extends LocalBillingDb {
    private volatile CdSkuDetailsDao _cdSkuDetailsDao;
    private volatile PurchaseOrderDao _purchaseOrderDao;

    @Override // com.changdu.component.pay.google.localdb.LocalBillingDb
    public CdSkuDetailsDao cdSkuDetailsDao() {
        CdSkuDetailsDao cdSkuDetailsDao;
        if (this._cdSkuDetailsDao != null) {
            return this._cdSkuDetailsDao;
        }
        synchronized (this) {
            try {
                if (this._cdSkuDetailsDao == null) {
                    this._cdSkuDetailsDao = new CdSkuDetailsDao_Impl(this);
                }
                cdSkuDetailsDao = this._cdSkuDetailsDao;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cdSkuDetailsDao;
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = getOpenHelper().getWritableDatabase();
        try {
            beginTransaction();
            writableDatabase.execSQL("DELETE FROM `CdSkuDetails`");
            writableDatabase.execSQL("DELETE FROM `purchase_order`");
            setTransactionSuccessful();
        } finally {
            endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override // androidx.room.RoomDatabase
    public InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "CdSkuDetails", "purchase_order");
    }

    @Override // androidx.room.RoomDatabase
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new RoomOpenHelper.Delegate(5) { // from class: com.changdu.component.pay.google.localdb.LocalBillingDb_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `CdSkuDetails` (`sku` TEXT NOT NULL, `originalJson` TEXT NOT NULL, `type` TEXT NOT NULL, `price` TEXT NOT NULL, `title` TEXT NOT NULL, `description` TEXT NOT NULL, PRIMARY KEY(`sku`))");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `purchase_order` (`cdOrderId` TEXT NOT NULL, `jumpUrl` TEXT NOT NULL, `sku` TEXT NOT NULL, `skuType` TEXT NOT NULL, `purchaseToken` TEXT NOT NULL, `purchaseData` TEXT NOT NULL, `status` INTEGER NOT NULL, PRIMARY KEY(`cdOrderId`, `purchaseToken`))");
                supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
                supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '04ad801e7993b559c79bb5e666e04b25')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `CdSkuDetails`");
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `purchase_order`");
                if (((RoomDatabase) LocalBillingDb_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) LocalBillingDb_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) LocalBillingDb_Impl.this).mCallbacks.get(i)).onDestructiveMigration(supportSQLiteDatabase);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
                if (((RoomDatabase) LocalBillingDb_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) LocalBillingDb_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) LocalBillingDb_Impl.this).mCallbacks.get(i)).onCreate(supportSQLiteDatabase);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
                ((RoomDatabase) LocalBillingDb_Impl.this).mDatabase = supportSQLiteDatabase;
                LocalBillingDb_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
                if (((RoomDatabase) LocalBillingDb_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) LocalBillingDb_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) LocalBillingDb_Impl.this).mCallbacks.get(i)).onOpen(supportSQLiteDatabase);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
                DBUtil.dropFtsSyncTriggers(supportSQLiteDatabase);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase supportSQLiteDatabase) {
                HashMap hashMap = new HashMap(6);
                hashMap.put(AppLovinEventParameters.PRODUCT_IDENTIFIER, new TableInfo.Column(AppLovinEventParameters.PRODUCT_IDENTIFIER, "TEXT", true, 1, null, 1));
                hashMap.put("originalJson", new TableInfo.Column("originalJson", "TEXT", true, 0, null, 1));
                hashMap.put("type", new TableInfo.Column("type", "TEXT", true, 0, null, 1));
                hashMap.put("price", new TableInfo.Column("price", "TEXT", true, 0, null, 1));
                hashMap.put(CampaignEx.JSON_KEY_TITLE, new TableInfo.Column(CampaignEx.JSON_KEY_TITLE, "TEXT", true, 0, null, 1));
                hashMap.put("description", new TableInfo.Column("description", "TEXT", true, 0, null, 1));
                TableInfo tableInfo = new TableInfo("CdSkuDetails", hashMap, new HashSet(0), new HashSet(0));
                TableInfo read = TableInfo.read(supportSQLiteDatabase, "CdSkuDetails");
                if (!tableInfo.equals(read)) {
                    return new RoomOpenHelper.ValidationResult(false, "CdSkuDetails(com.changdu.component.pay.google.localdb.CdSkuDetails).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
                }
                HashMap hashMap2 = new HashMap(7);
                hashMap2.put("cdOrderId", new TableInfo.Column("cdOrderId", "TEXT", true, 1, null, 1));
                hashMap2.put("jumpUrl", new TableInfo.Column("jumpUrl", "TEXT", true, 0, null, 1));
                hashMap2.put(AppLovinEventParameters.PRODUCT_IDENTIFIER, new TableInfo.Column(AppLovinEventParameters.PRODUCT_IDENTIFIER, "TEXT", true, 0, null, 1));
                hashMap2.put("skuType", new TableInfo.Column("skuType", "TEXT", true, 0, null, 1));
                hashMap2.put("purchaseToken", new TableInfo.Column("purchaseToken", "TEXT", true, 2, null, 1));
                hashMap2.put("purchaseData", new TableInfo.Column("purchaseData", "TEXT", true, 0, null, 1));
                hashMap2.put(NotificationCompat.CATEGORY_STATUS, new TableInfo.Column(NotificationCompat.CATEGORY_STATUS, "INTEGER", true, 0, null, 1));
                TableInfo tableInfo2 = new TableInfo("purchase_order", hashMap2, new HashSet(0), new HashSet(0));
                TableInfo read2 = TableInfo.read(supportSQLiteDatabase, "purchase_order");
                if (!tableInfo2.equals(read2)) {
                    return new RoomOpenHelper.ValidationResult(false, "purchase_order(com.changdu.component.pay.google.localdb.PurchaseOrder).\n Expected:\n" + tableInfo2 + "\n Found:\n" + read2);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            }
        }, "04ad801e7993b559c79bb5e666e04b25", "45c11e022c97d8cb972c032febeaad87")).build());
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> getAutoMigrations(@NonNull Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> map) {
        return Arrays.asList(new Migration[0]);
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(CdSkuDetailsDao.class, CdSkuDetailsDao_Impl.getRequiredConverters());
        hashMap.put(PurchaseOrderDao.class, PurchaseOrderDao_Impl.getRequiredConverters());
        return hashMap;
    }

    @Override // com.changdu.component.pay.google.localdb.LocalBillingDb
    public PurchaseOrderDao purchaseOrderDao() {
        PurchaseOrderDao purchaseOrderDao;
        if (this._purchaseOrderDao != null) {
            return this._purchaseOrderDao;
        }
        synchronized (this) {
            try {
                if (this._purchaseOrderDao == null) {
                    this._purchaseOrderDao = new PurchaseOrderDao_Impl(this);
                }
                purchaseOrderDao = this._purchaseOrderDao;
            } catch (Throwable th) {
                throw th;
            }
        }
        return purchaseOrderDao;
    }
}
