package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0016J\u001a\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/work/impl/model/SystemIdInfoDao_Impl;", "Landroidx/work/impl/model/SystemIdInfoDao;", "__db", "Landroidx/room/RoomDatabase;", "<init>", "(Landroidx/room/RoomDatabase;)V", "__insertAdapterOfSystemIdInfo", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/SystemIdInfo;", "insertSystemIdInfo", "", "systemIdInfo", "getSystemIdInfo", "workSpecId", "", "generation", "", "getWorkSpecIds", "", "removeSystemIdInfo", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final RoomDatabase __db;
    @NotNull
    private final EntityInsertAdapter<SystemIdInfo> __insertAdapterOfSystemIdInfo = new EntityInsertAdapter<SystemIdInfo>() { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement sQLiteStatement, SystemIdInfo systemIdInfo) {
            sQLiteStatement.mo48bindText(1, systemIdInfo.workSpecId);
            sQLiteStatement.mo46bindLong(2, systemIdInfo.getGeneration());
            sQLiteStatement.mo46bindLong(3, systemIdInfo.systemId);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/SystemIdInfoDao_Impl$Companion;", "", "<init>", "()V", "getRequiredConverters", "", "Lkotlin/reflect/KClass;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<KClass<?>> getRequiredConverters() {
            return CollectionsKt.emptyList();
        }

        private Companion() {
        }
    }

    public SystemIdInfoDao_Impl(@NotNull RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SystemIdInfo getSystemIdInfo$lambda$1(String str, String str2, int i, SQLiteConnection sQLiteConnection) {
        SystemIdInfo systemIdInfo;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            prepare.mo46bindLong(2, i);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "work_spec_id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "generation");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "system_id");
            if (prepare.step()) {
                systemIdInfo = new SystemIdInfo(prepare.getText(columnIndexOrThrow), (int) prepare.getLong(columnIndexOrThrow2), (int) prepare.getLong(columnIndexOrThrow3));
            } else {
                systemIdInfo = null;
            }
            return systemIdInfo;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkSpecIds$lambda$2(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                arrayList.add(prepare.getText(0));
            }
            return arrayList;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertSystemIdInfo$lambda$0(SystemIdInfoDao_Impl systemIdInfoDao_Impl, SystemIdInfo systemIdInfo, SQLiteConnection sQLiteConnection) {
        systemIdInfoDao_Impl.__insertAdapterOfSystemIdInfo.insert(sQLiteConnection, (SQLiteConnection) systemIdInfo);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit removeSystemIdInfo$lambda$3(String str, String str2, int i, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            prepare.mo46bindLong(2, i);
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit removeSystemIdInfo$lambda$4(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public /* synthetic */ SystemIdInfo getSystemIdInfo(WorkGenerationalId workGenerationalId) {
        return Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, workGenerationalId);
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    @NotNull
    public List<String> getWorkSpecIds() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workSpecIds$lambda$2;
                workSpecIds$lambda$2 = SystemIdInfoDao_Impl.getWorkSpecIds$lambda$2(r1, (SQLiteConnection) obj);
                return workSpecIds$lambda$2;
            }
        });
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void insertSystemIdInfo(@NotNull final SystemIdInfo systemIdInfo) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit insertSystemIdInfo$lambda$0;
                insertSystemIdInfo$lambda$0 = SystemIdInfoDao_Impl.insertSystemIdInfo$lambda$0(SystemIdInfoDao_Impl.this, systemIdInfo, (SQLiteConnection) obj);
                return insertSystemIdInfo$lambda$0;
            }
        });
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public /* synthetic */ void removeSystemIdInfo(WorkGenerationalId workGenerationalId) {
        Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, workGenerationalId);
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    @Nullable
    public SystemIdInfo getSystemIdInfo(@NotNull final String str, final int i) {
        return (SystemIdInfo) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SystemIdInfo systemIdInfo$lambda$1;
                systemIdInfo$lambda$1 = SystemIdInfoDao_Impl.getSystemIdInfo$lambda$1(r1, str, i, (SQLiteConnection) obj);
                return systemIdInfo$lambda$1;
            }
        });
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(@NotNull final String str, final int i) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit removeSystemIdInfo$lambda$3;
                removeSystemIdInfo$lambda$3 = SystemIdInfoDao_Impl.removeSystemIdInfo$lambda$3(r1, str, i, (SQLiteConnection) obj);
                return removeSystemIdInfo$lambda$3;
            }
        });
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(@NotNull final String str) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit removeSystemIdInfo$lambda$4;
                removeSystemIdInfo$lambda$4 = SystemIdInfoDao_Impl.removeSystemIdInfo$lambda$4(r1, str, (SQLiteConnection) obj);
                return removeSystemIdInfo$lambda$4;
            }
        });
    }
}
