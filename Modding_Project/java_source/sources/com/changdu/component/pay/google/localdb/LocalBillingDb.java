package com.changdu.component.pay.google.localdb;

import android.content.Context;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import com.unity3d.services.core.fid.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@TypeConverters({PurchaseTypeConverter.class})
@Database(entities = {CdSkuDetails.class, PurchaseOrder.class}, exportSchema = true, version = 5)
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0006H&¨\u0006\b"}, d2 = {"Lcom/changdu/component/pay/google/localdb/LocalBillingDb;", "Landroidx/room/RoomDatabase;", "()V", "cdSkuDetailsDao", "Lcom/changdu/component/pay/google/localdb/CdSkuDetailsDao;", "purchaseOrderDao", "Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao;", "Companion", "pay-google_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class LocalBillingDb extends RoomDatabase {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String DATABASE_NAME = "play_billing_purchase_db";
    @Nullable
    private static volatile LocalBillingDb INSTANCE;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0002J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/changdu/component/pay/google/localdb/LocalBillingDb$Companion;", "", "()V", "DATABASE_NAME", "", "INSTANCE", "Lcom/changdu/component/pay/google/localdb/LocalBillingDb;", "buildDatabase", "appContext", "Landroid/content/Context;", Constants.GET_INSTANCE, "context", "pay-google_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final LocalBillingDb buildDatabase(Context context) {
            return (LocalBillingDb) Room.databaseBuilder(context, LocalBillingDb.class, LocalBillingDb.DATABASE_NAME).fallbackToDestructiveMigration().build();
        }

        @NotNull
        public final LocalBillingDb getInstance(@NotNull Context context) {
            LocalBillingDb localBillingDb;
            LocalBillingDb localBillingDb2 = LocalBillingDb.INSTANCE;
            if (localBillingDb2 == null) {
                synchronized (this) {
                    localBillingDb = LocalBillingDb.INSTANCE;
                    if (localBillingDb == null) {
                        localBillingDb = LocalBillingDb.Companion.buildDatabase(context.getApplicationContext());
                        LocalBillingDb.INSTANCE = localBillingDb;
                    }
                }
                return localBillingDb;
            }
            return localBillingDb2;
        }

        private Companion() {
        }
    }

    @NotNull
    public abstract CdSkuDetailsDao cdSkuDetailsDao();

    @NotNull
    public abstract PurchaseOrderDao purchaseOrderDao();
}
