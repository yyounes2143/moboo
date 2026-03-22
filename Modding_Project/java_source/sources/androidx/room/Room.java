package androidx.room;

import android.content.Context;
import androidx.room.RoomDatabase;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J.\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\b\b\u0000\u0010\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\t0\u000eH\u0007J6\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\n\b\u0000\u0010\t\u0018\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u000e\b\n\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\t0\u0010H\u0086\bø\u0001\u0000J8\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\b\b\u0000\u0010\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\t0\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u0007J>\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\n\b\u0000\u0010\t\u0018\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00052\u000e\b\n\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\t0\u0010H\u0086\bø\u0001\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0013"}, d2 = {"Landroidx/room/Room;", "", "<init>", "()V", "LOG_TAG", "", "MASTER_TABLE_NAME", "inMemoryDatabaseBuilder", "Landroidx/room/RoomDatabase$Builder;", "T", "Landroidx/room/RoomDatabase;", "context", "Landroid/content/Context;", "klass", "Ljava/lang/Class;", "factory", "Lkotlin/Function0;", "databaseBuilder", "name", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Room {
    @NotNull
    public static final Room INSTANCE = new Room();
    @NotNull
    public static final String LOG_TAG = "ROOM";
    @NotNull
    public static final String MASTER_TABLE_NAME = "room_master_table";

    private Room() {
    }

    @JvmStatic
    @NotNull
    public static final <T extends RoomDatabase> RoomDatabase.Builder<T> databaseBuilder(@NotNull Context context, @NotNull Class<T> cls, @Nullable String str) {
        if (!(str == null || StringsKt.isBlank(str))) {
            if (!Intrinsics.areEqual(str, ":memory:")) {
                return new RoomDatabase.Builder<>(context, cls, str);
            }
            throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
    }

    public static /* synthetic */ RoomDatabase.Builder databaseBuilder$default(Room room, Context context, String str, Function0 function0, int i, Object obj) {
        if ((i & 4) != 0) {
            Intrinsics.needClassReification();
            function0 = Room$databaseBuilder$3.INSTANCE;
        }
        if (!StringsKt.isBlank(str)) {
            if (!Intrinsics.areEqual(str, ":memory:")) {
                Intrinsics.reifiedOperationMarker(4, "T");
                return new RoomDatabase.Builder(Reflection.getOrCreateKotlinClass(RoomDatabase.class), str, function0, context);
            }
            throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
        }
        throw new IllegalArgumentException("Cannot build a database with empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
    }

    @JvmStatic
    @NotNull
    public static final <T extends RoomDatabase> RoomDatabase.Builder<T> inMemoryDatabaseBuilder(@NotNull Context context, @NotNull Class<T> cls) {
        return new RoomDatabase.Builder<>(context, cls, null);
    }

    public static /* synthetic */ RoomDatabase.Builder inMemoryDatabaseBuilder$default(Room room, Context context, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            Intrinsics.needClassReification();
            function0 = Room$inMemoryDatabaseBuilder$1.INSTANCE;
        }
        Intrinsics.reifiedOperationMarker(4, "T");
        return new RoomDatabase.Builder(Reflection.getOrCreateKotlinClass(RoomDatabase.class), null, function0, context);
    }

    public final /* synthetic */ <T extends RoomDatabase> RoomDatabase.Builder<T> inMemoryDatabaseBuilder(Context context, Function0<? extends T> function0) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return new RoomDatabase.Builder<>(Reflection.getOrCreateKotlinClass(RoomDatabase.class), null, function0, context);
    }

    public final /* synthetic */ <T extends RoomDatabase> RoomDatabase.Builder<T> databaseBuilder(Context context, String str, Function0<? extends T> function0) {
        if (!StringsKt.isBlank(str)) {
            if (!Intrinsics.areEqual(str, ":memory:")) {
                Intrinsics.reifiedOperationMarker(4, "T");
                return new RoomDatabase.Builder<>(Reflection.getOrCreateKotlinClass(RoomDatabase.class), str, function0, context);
            }
            throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
        }
        throw new IllegalArgumentException("Cannot build a database with empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
    }
}
