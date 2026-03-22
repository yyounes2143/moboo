package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
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
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/work/impl/model/DependencyDao_Impl;", "Landroidx/work/impl/model/DependencyDao;", "__db", "Landroidx/room/RoomDatabase;", "<init>", "(Landroidx/room/RoomDatabase;)V", "__insertAdapterOfDependency", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/Dependency;", "insertDependency", "", "dependency", "hasCompletedAllPrerequisites", "", "id", "", "getPrerequisites", "", "getDependentWorkIds", "hasDependents", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DependencyDao_Impl implements DependencyDao {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final RoomDatabase __db;
    @NotNull
    private final EntityInsertAdapter<Dependency> __insertAdapterOfDependency = new EntityInsertAdapter<Dependency>() { // from class: androidx.work.impl.model.DependencyDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement sQLiteStatement, Dependency dependency) {
            sQLiteStatement.mo48bindText(1, dependency.getWorkSpecId());
            sQLiteStatement.mo48bindText(2, dependency.getPrerequisiteId());
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/DependencyDao_Impl$Companion;", "", "<init>", "()V", "getRequiredConverters", "", "Lkotlin/reflect/KClass;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
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

    public DependencyDao_Impl(@NotNull RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getDependentWorkIds$lambda$3(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
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
    public static final List getPrerequisites$lambda$2(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
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
    public static final boolean hasCompletedAllPrerequisites$lambda$1(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        boolean z = true;
        try {
            prepare.mo48bindText(1, str2);
            boolean z2 = false;
            if (prepare.step()) {
                if (((int) prepare.getLong(0)) == 0) {
                    z = false;
                }
                z2 = z;
            }
            return z2;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasDependents$lambda$4(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        boolean z = true;
        try {
            prepare.mo48bindText(1, str2);
            boolean z2 = false;
            if (prepare.step()) {
                if (((int) prepare.getLong(0)) == 0) {
                    z = false;
                }
                z2 = z;
            }
            return z2;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertDependency$lambda$0(DependencyDao_Impl dependencyDao_Impl, Dependency dependency, SQLiteConnection sQLiteConnection) {
        dependencyDao_Impl.__insertAdapterOfDependency.insert(sQLiteConnection, (SQLiteConnection) dependency);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.DependencyDao
    @NotNull
    public List<String> getDependentWorkIds(@NotNull final String str) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List dependentWorkIds$lambda$3;
                dependentWorkIds$lambda$3 = DependencyDao_Impl.getDependentWorkIds$lambda$3(r1, str, (SQLiteConnection) obj);
                return dependentWorkIds$lambda$3;
            }
        });
    }

    @Override // androidx.work.impl.model.DependencyDao
    @NotNull
    public List<String> getPrerequisites(@NotNull final String str) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List prerequisites$lambda$2;
                prerequisites$lambda$2 = DependencyDao_Impl.getPrerequisites$lambda$2(r1, str, (SQLiteConnection) obj);
                return prerequisites$lambda$2;
            }
        });
    }

    @Override // androidx.work.impl.model.DependencyDao
    public boolean hasCompletedAllPrerequisites(@NotNull final String str) {
        return ((Boolean) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean hasCompletedAllPrerequisites$lambda$1;
                hasCompletedAllPrerequisites$lambda$1 = DependencyDao_Impl.hasCompletedAllPrerequisites$lambda$1(r1, str, (SQLiteConnection) obj);
                return Boolean.valueOf(hasCompletedAllPrerequisites$lambda$1);
            }
        })).booleanValue();
    }

    @Override // androidx.work.impl.model.DependencyDao
    public boolean hasDependents(@NotNull final String str) {
        return ((Boolean) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean hasDependents$lambda$4;
                hasDependents$lambda$4 = DependencyDao_Impl.hasDependents$lambda$4(r1, str, (SQLiteConnection) obj);
                return Boolean.valueOf(hasDependents$lambda$4);
            }
        })).booleanValue();
    }

    @Override // androidx.work.impl.model.DependencyDao
    public void insertDependency(@NotNull final Dependency dependency) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit insertDependency$lambda$0;
                insertDependency$lambda$0 = DependencyDao_Impl.insertDependency$lambda$0(DependencyDao_Impl.this, dependency, (SQLiteConnection) obj);
                return insertDependency$lambda$0;
            }
        });
    }
}
