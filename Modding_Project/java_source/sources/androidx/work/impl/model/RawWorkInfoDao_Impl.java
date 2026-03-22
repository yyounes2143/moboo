package androidx.work.impl.model;

import androidx.collection.ArrayMap;
import androidx.lifecycle.LiveData;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.room.RoomDatabase;
import androidx.room.RoomRawQuery;
import androidx.room.RoomSQLiteQuery;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import kotlinx.coroutines.flow.Flow;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\f2\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u000e2\u0006\u0010\t\u001a\u00020\nH\u0016J*\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00160\u0014H\u0002J*\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00160\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Landroidx/work/impl/model/RawWorkInfoDao_Impl;", "Landroidx/work/impl/model/RawWorkInfoDao;", "__db", "Landroidx/room/RoomDatabase;", "<init>", "(Landroidx/room/RoomDatabase;)V", "getWorkInfoPojos", "", "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "query", "Landroidx/sqlite/db/SupportSQLiteQuery;", "getWorkInfoPojosLiveData", "Landroidx/lifecycle/LiveData;", "getWorkInfoPojosFlow", "Lkotlinx/coroutines/flow/Flow;", "__fetchRelationshipWorkTagAsjavaLangString", "", "_connection", "Landroidx/sqlite/SQLiteConnection;", "_map", "Landroidx/collection/ArrayMap;", "", "", "__fetchRelationshipWorkProgressAsandroidxWorkData", "Landroidx/work/Data;", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RawWorkInfoDao_Impl implements RawWorkInfoDao {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final RoomDatabase __db;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/RawWorkInfoDao_Impl$Companion;", "", "<init>", "()V", "getRequiredConverters", "", "Lkotlin/reflect/KClass;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
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

    public RawWorkInfoDao_Impl(@NotNull RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    private final void __fetchRelationshipWorkProgressAsandroidxWorkData(final SQLiteConnection sQLiteConnection, ArrayMap<String, List<Data>> arrayMap) {
        Set<String> keySet = arrayMap.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            RelationUtil.recursiveFetchArrayMap(arrayMap, true, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4;
                    __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4 = RawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4(RawWorkInfoDao_Impl.this, sQLiteConnection, (ArrayMap) obj);
                    return __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4;
                }
            });
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        StringUtil.appendPlaceholders(sb, keySet.size());
        sb.append(")");
        SQLiteStatement prepare = sQLiteConnection.prepare(sb.toString());
        int i = 1;
        for (String str : keySet) {
            prepare.mo48bindText(i, str);
            i++;
        }
        try {
            int columnIndex = SQLiteStatementUtil.getColumnIndex(prepare, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (prepare.step()) {
                List<Data> list = arrayMap.get(prepare.getText(columnIndex));
                if (list != null) {
                    list.add(Data.Companion.fromByteArray(prepare.getBlob(0)));
                }
            }
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4(RawWorkInfoDao_Impl rawWorkInfoDao_Impl, SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        rawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap);
        return Unit.INSTANCE;
    }

    private final void __fetchRelationshipWorkTagAsjavaLangString(final SQLiteConnection sQLiteConnection, ArrayMap<String, List<String>> arrayMap) {
        Set<String> keySet = arrayMap.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            RelationUtil.recursiveFetchArrayMap(arrayMap, true, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit __fetchRelationshipWorkTagAsjavaLangString$lambda$3;
                    __fetchRelationshipWorkTagAsjavaLangString$lambda$3 = RawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString$lambda$3(RawWorkInfoDao_Impl.this, sQLiteConnection, (ArrayMap) obj);
                    return __fetchRelationshipWorkTagAsjavaLangString$lambda$3;
                }
            });
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        StringUtil.appendPlaceholders(sb, keySet.size());
        sb.append(")");
        SQLiteStatement prepare = sQLiteConnection.prepare(sb.toString());
        int i = 1;
        for (String str : keySet) {
            prepare.mo48bindText(i, str);
            i++;
        }
        try {
            int columnIndex = SQLiteStatementUtil.getColumnIndex(prepare, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (prepare.step()) {
                List<String> list = arrayMap.get(prepare.getText(columnIndex));
                if (list != null) {
                    list.add(prepare.getText(0));
                }
            }
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit __fetchRelationshipWorkTagAsjavaLangString$lambda$3(RawWorkInfoDao_Impl rawWorkInfoDao_Impl, SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        rawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkInfoPojos$lambda$0(String str, RoomRawQuery roomRawQuery, RawWorkInfoDao_Impl rawWorkInfoDao_Impl, SQLiteConnection sQLiteConnection) {
        long j;
        long j2;
        long j3;
        int i;
        long j4;
        long j5;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j6;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z;
        boolean z2;
        int i12;
        int i13;
        boolean z3;
        boolean z4;
        int i14;
        int i15;
        boolean z5;
        boolean z6;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z7;
        long j7;
        long j8;
        int i20;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            roomRawQuery.getBindingFunction().invoke(prepare);
            int columnIndex = SQLiteStatementUtil.getColumnIndex(prepare, "id");
            int columnIndex2 = SQLiteStatementUtil.getColumnIndex(prepare, "state");
            int columnIndex3 = SQLiteStatementUtil.getColumnIndex(prepare, "output");
            int columnIndex4 = SQLiteStatementUtil.getColumnIndex(prepare, "initial_delay");
            int columnIndex5 = SQLiteStatementUtil.getColumnIndex(prepare, "interval_duration");
            int columnIndex6 = SQLiteStatementUtil.getColumnIndex(prepare, "flex_duration");
            int columnIndex7 = SQLiteStatementUtil.getColumnIndex(prepare, "run_attempt_count");
            int columnIndex8 = SQLiteStatementUtil.getColumnIndex(prepare, "backoff_policy");
            int columnIndex9 = SQLiteStatementUtil.getColumnIndex(prepare, "backoff_delay_duration");
            int columnIndex10 = SQLiteStatementUtil.getColumnIndex(prepare, "last_enqueue_time");
            int columnIndex11 = SQLiteStatementUtil.getColumnIndex(prepare, "period_count");
            int columnIndex12 = SQLiteStatementUtil.getColumnIndex(prepare, "generation");
            int columnIndex13 = SQLiteStatementUtil.getColumnIndex(prepare, "next_schedule_time_override");
            int columnIndex14 = SQLiteStatementUtil.getColumnIndex(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndex15 = SQLiteStatementUtil.getColumnIndex(prepare, "required_network_type");
            int columnIndex16 = SQLiteStatementUtil.getColumnIndex(prepare, "required_network_request");
            int columnIndex17 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_charging");
            int columnIndex18 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_device_idle");
            int columnIndex19 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_battery_not_low");
            int columnIndex20 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_storage_not_low");
            int columnIndex21 = SQLiteStatementUtil.getColumnIndex(prepare, "trigger_content_update_delay");
            int columnIndex22 = SQLiteStatementUtil.getColumnIndex(prepare, "trigger_max_content_delay");
            int columnIndex23 = SQLiteStatementUtil.getColumnIndex(prepare, "content_uri_triggers");
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            int i21 = columnIndex12;
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (prepare.step()) {
                int i22 = columnIndex11;
                String text = prepare.getText(columnIndex);
                if (!arrayMap.containsKey(text)) {
                    i20 = columnIndex10;
                    arrayMap.put(text, new ArrayList());
                } else {
                    i20 = columnIndex10;
                }
                String text2 = prepare.getText(columnIndex);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
                columnIndex11 = i22;
                columnIndex10 = i20;
            }
            int i23 = columnIndex10;
            int i24 = columnIndex11;
            prepare.reset();
            rawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            rawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                if (columnIndex != -1) {
                    String text3 = prepare.getText(columnIndex);
                    if (columnIndex2 != -1) {
                        WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(columnIndex2));
                        if (columnIndex3 != -1) {
                            Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(columnIndex3));
                            if (columnIndex4 == -1) {
                                j = 0;
                            } else {
                                j = prepare.getLong(columnIndex4);
                            }
                            if (columnIndex5 == -1) {
                                j2 = 0;
                            } else {
                                j2 = prepare.getLong(columnIndex5);
                            }
                            if (columnIndex6 == -1) {
                                j3 = 0;
                            } else {
                                j3 = prepare.getLong(columnIndex6);
                            }
                            boolean z8 = false;
                            if (columnIndex7 == -1) {
                                i = 0;
                            } else {
                                i = (int) prepare.getLong(columnIndex7);
                            }
                            if (columnIndex8 != -1) {
                                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(columnIndex8));
                                if (columnIndex9 == -1) {
                                    j4 = 0;
                                } else {
                                    j4 = prepare.getLong(columnIndex9);
                                }
                                int i25 = i23;
                                if (i25 == -1) {
                                    j5 = 0;
                                } else {
                                    j5 = prepare.getLong(i25);
                                }
                                int i26 = i24;
                                if (i26 == -1) {
                                    i2 = columnIndex;
                                    i3 = 0;
                                    i4 = -1;
                                } else {
                                    i2 = columnIndex;
                                    i3 = (int) prepare.getLong(i26);
                                    i4 = -1;
                                }
                                int i27 = i21;
                                if (i27 == i4) {
                                    i5 = columnIndex2;
                                    i6 = 0;
                                    i7 = i4;
                                } else {
                                    i5 = columnIndex2;
                                    i6 = (int) prepare.getLong(i27);
                                    i7 = -1;
                                }
                                int i28 = columnIndex13;
                                if (i28 == i7) {
                                    j6 = 0;
                                } else {
                                    j6 = prepare.getLong(i28);
                                }
                                int i29 = columnIndex14;
                                if (i29 == i7) {
                                    i8 = columnIndex3;
                                    i9 = 0;
                                    i10 = i7;
                                } else {
                                    i8 = columnIndex3;
                                    i9 = (int) prepare.getLong(i29);
                                    i10 = -1;
                                }
                                int i30 = columnIndex15;
                                if (i30 != i10) {
                                    int i31 = columnIndex4;
                                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(i30));
                                    int i32 = columnIndex16;
                                    if (i32 != -1) {
                                        NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(i32));
                                        int i33 = columnIndex17;
                                        if (i33 == -1) {
                                            i11 = columnIndex5;
                                            z2 = false;
                                            i12 = -1;
                                        } else {
                                            i11 = columnIndex5;
                                            if (((int) prepare.getLong(i33)) != 0) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            z2 = z;
                                            i12 = -1;
                                        }
                                        int i34 = columnIndex18;
                                        if (i34 == i12) {
                                            i13 = columnIndex6;
                                            z4 = false;
                                            i14 = i12;
                                        } else {
                                            i13 = columnIndex6;
                                            if (((int) prepare.getLong(i34)) != 0) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            z4 = z3;
                                            i14 = -1;
                                        }
                                        int i35 = columnIndex19;
                                        if (i35 == i14) {
                                            i15 = columnIndex7;
                                            z6 = false;
                                            i16 = i14;
                                        } else {
                                            i15 = columnIndex7;
                                            if (((int) prepare.getLong(i35)) != 0) {
                                                z5 = true;
                                            } else {
                                                z5 = false;
                                            }
                                            z6 = z5;
                                            i16 = -1;
                                        }
                                        int i36 = columnIndex20;
                                        if (i36 == i16) {
                                            i17 = columnIndex8;
                                            i18 = i16;
                                            z7 = false;
                                            i19 = columnIndex21;
                                        } else {
                                            i17 = columnIndex8;
                                            if (((int) prepare.getLong(i36)) != 0) {
                                                z8 = true;
                                            }
                                            i18 = -1;
                                            i19 = columnIndex21;
                                            z7 = z8;
                                        }
                                        if (i19 == i18) {
                                            j7 = 0;
                                        } else {
                                            j7 = prepare.getLong(i19);
                                        }
                                        int i37 = columnIndex22;
                                        if (i37 == i18) {
                                            j8 = 0;
                                        } else {
                                            j8 = prepare.getLong(i37);
                                        }
                                        columnIndex22 = i37;
                                        int i38 = columnIndex23;
                                        if (i38 != i18) {
                                            columnIndex23 = i38;
                                            int i39 = i2;
                                            arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z4, z6, z7, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(i38))), i, intToBackoffPolicy, j4, j5, i3, i6, j6, i9, (List) MapsKt.getValue(arrayMap, prepare.getText(i39)), (List) MapsKt.getValue(arrayMap2, prepare.getText(i39))));
                                            columnIndex3 = i8;
                                            columnIndex13 = i28;
                                            columnIndex = i39;
                                            columnIndex8 = i17;
                                            columnIndex20 = i36;
                                            columnIndex6 = i13;
                                            columnIndex18 = i34;
                                            columnIndex4 = i31;
                                            columnIndex14 = i29;
                                            columnIndex16 = i32;
                                            columnIndex21 = i19;
                                            i24 = i26;
                                            columnIndex7 = i15;
                                            columnIndex19 = i35;
                                            columnIndex5 = i11;
                                            columnIndex17 = i33;
                                            columnIndex15 = i30;
                                            columnIndex2 = i5;
                                            i21 = i27;
                                            i23 = i25;
                                        } else {
                                            throw new IllegalStateException("Missing value for a NON-NULL column 'content_uri_triggers', found NULL value instead.");
                                        }
                                    } else {
                                        throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_request', found NULL value instead.");
                                    }
                                } else {
                                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_type', found NULL value instead.");
                                }
                            } else {
                                throw new IllegalStateException("Missing value for a NON-NULL column 'backoff_policy', found NULL value instead.");
                            }
                        } else {
                            throw new IllegalStateException("Missing value for a NON-NULL column 'output', found NULL value instead.");
                        }
                    } else {
                        throw new IllegalStateException("Missing value for a NON-NULL column 'state', found NULL value instead.");
                    }
                } else {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'id', found NULL value instead.");
                }
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkInfoPojosFlow$lambda$2(String str, RoomRawQuery roomRawQuery, RawWorkInfoDao_Impl rawWorkInfoDao_Impl, SQLiteConnection sQLiteConnection) {
        long j;
        long j2;
        long j3;
        int i;
        long j4;
        long j5;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j6;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z;
        boolean z2;
        int i12;
        int i13;
        boolean z3;
        boolean z4;
        int i14;
        int i15;
        boolean z5;
        boolean z6;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z7;
        long j7;
        long j8;
        int i20;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            roomRawQuery.getBindingFunction().invoke(prepare);
            int columnIndex = SQLiteStatementUtil.getColumnIndex(prepare, "id");
            int columnIndex2 = SQLiteStatementUtil.getColumnIndex(prepare, "state");
            int columnIndex3 = SQLiteStatementUtil.getColumnIndex(prepare, "output");
            int columnIndex4 = SQLiteStatementUtil.getColumnIndex(prepare, "initial_delay");
            int columnIndex5 = SQLiteStatementUtil.getColumnIndex(prepare, "interval_duration");
            int columnIndex6 = SQLiteStatementUtil.getColumnIndex(prepare, "flex_duration");
            int columnIndex7 = SQLiteStatementUtil.getColumnIndex(prepare, "run_attempt_count");
            int columnIndex8 = SQLiteStatementUtil.getColumnIndex(prepare, "backoff_policy");
            int columnIndex9 = SQLiteStatementUtil.getColumnIndex(prepare, "backoff_delay_duration");
            int columnIndex10 = SQLiteStatementUtil.getColumnIndex(prepare, "last_enqueue_time");
            int columnIndex11 = SQLiteStatementUtil.getColumnIndex(prepare, "period_count");
            int columnIndex12 = SQLiteStatementUtil.getColumnIndex(prepare, "generation");
            int columnIndex13 = SQLiteStatementUtil.getColumnIndex(prepare, "next_schedule_time_override");
            int columnIndex14 = SQLiteStatementUtil.getColumnIndex(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndex15 = SQLiteStatementUtil.getColumnIndex(prepare, "required_network_type");
            int columnIndex16 = SQLiteStatementUtil.getColumnIndex(prepare, "required_network_request");
            int columnIndex17 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_charging");
            int columnIndex18 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_device_idle");
            int columnIndex19 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_battery_not_low");
            int columnIndex20 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_storage_not_low");
            int columnIndex21 = SQLiteStatementUtil.getColumnIndex(prepare, "trigger_content_update_delay");
            int columnIndex22 = SQLiteStatementUtil.getColumnIndex(prepare, "trigger_max_content_delay");
            int columnIndex23 = SQLiteStatementUtil.getColumnIndex(prepare, "content_uri_triggers");
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            int i21 = columnIndex12;
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (prepare.step()) {
                int i22 = columnIndex11;
                String text = prepare.getText(columnIndex);
                if (!arrayMap.containsKey(text)) {
                    i20 = columnIndex10;
                    arrayMap.put(text, new ArrayList());
                } else {
                    i20 = columnIndex10;
                }
                String text2 = prepare.getText(columnIndex);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
                columnIndex11 = i22;
                columnIndex10 = i20;
            }
            int i23 = columnIndex10;
            int i24 = columnIndex11;
            prepare.reset();
            rawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            rawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                if (columnIndex != -1) {
                    String text3 = prepare.getText(columnIndex);
                    if (columnIndex2 != -1) {
                        WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(columnIndex2));
                        if (columnIndex3 != -1) {
                            Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(columnIndex3));
                            if (columnIndex4 == -1) {
                                j = 0;
                            } else {
                                j = prepare.getLong(columnIndex4);
                            }
                            if (columnIndex5 == -1) {
                                j2 = 0;
                            } else {
                                j2 = prepare.getLong(columnIndex5);
                            }
                            if (columnIndex6 == -1) {
                                j3 = 0;
                            } else {
                                j3 = prepare.getLong(columnIndex6);
                            }
                            boolean z8 = false;
                            if (columnIndex7 == -1) {
                                i = 0;
                            } else {
                                i = (int) prepare.getLong(columnIndex7);
                            }
                            if (columnIndex8 != -1) {
                                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(columnIndex8));
                                if (columnIndex9 == -1) {
                                    j4 = 0;
                                } else {
                                    j4 = prepare.getLong(columnIndex9);
                                }
                                int i25 = i23;
                                if (i25 == -1) {
                                    j5 = 0;
                                } else {
                                    j5 = prepare.getLong(i25);
                                }
                                int i26 = i24;
                                if (i26 == -1) {
                                    i2 = columnIndex;
                                    i3 = 0;
                                    i4 = -1;
                                } else {
                                    i2 = columnIndex;
                                    i3 = (int) prepare.getLong(i26);
                                    i4 = -1;
                                }
                                int i27 = i21;
                                if (i27 == i4) {
                                    i5 = columnIndex2;
                                    i6 = 0;
                                    i7 = i4;
                                } else {
                                    i5 = columnIndex2;
                                    i6 = (int) prepare.getLong(i27);
                                    i7 = -1;
                                }
                                int i28 = columnIndex13;
                                if (i28 == i7) {
                                    j6 = 0;
                                } else {
                                    j6 = prepare.getLong(i28);
                                }
                                int i29 = columnIndex14;
                                if (i29 == i7) {
                                    i8 = columnIndex3;
                                    i9 = 0;
                                    i10 = i7;
                                } else {
                                    i8 = columnIndex3;
                                    i9 = (int) prepare.getLong(i29);
                                    i10 = -1;
                                }
                                int i30 = columnIndex15;
                                if (i30 != i10) {
                                    int i31 = columnIndex4;
                                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(i30));
                                    int i32 = columnIndex16;
                                    if (i32 != -1) {
                                        NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(i32));
                                        int i33 = columnIndex17;
                                        if (i33 == -1) {
                                            i11 = columnIndex5;
                                            z2 = false;
                                            i12 = -1;
                                        } else {
                                            i11 = columnIndex5;
                                            if (((int) prepare.getLong(i33)) != 0) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            z2 = z;
                                            i12 = -1;
                                        }
                                        int i34 = columnIndex18;
                                        if (i34 == i12) {
                                            i13 = columnIndex6;
                                            z4 = false;
                                            i14 = i12;
                                        } else {
                                            i13 = columnIndex6;
                                            if (((int) prepare.getLong(i34)) != 0) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            z4 = z3;
                                            i14 = -1;
                                        }
                                        int i35 = columnIndex19;
                                        if (i35 == i14) {
                                            i15 = columnIndex7;
                                            z6 = false;
                                            i16 = i14;
                                        } else {
                                            i15 = columnIndex7;
                                            if (((int) prepare.getLong(i35)) != 0) {
                                                z5 = true;
                                            } else {
                                                z5 = false;
                                            }
                                            z6 = z5;
                                            i16 = -1;
                                        }
                                        int i36 = columnIndex20;
                                        if (i36 == i16) {
                                            i17 = columnIndex8;
                                            i18 = i16;
                                            z7 = false;
                                            i19 = columnIndex21;
                                        } else {
                                            i17 = columnIndex8;
                                            if (((int) prepare.getLong(i36)) != 0) {
                                                z8 = true;
                                            }
                                            i18 = -1;
                                            i19 = columnIndex21;
                                            z7 = z8;
                                        }
                                        if (i19 == i18) {
                                            j7 = 0;
                                        } else {
                                            j7 = prepare.getLong(i19);
                                        }
                                        int i37 = columnIndex22;
                                        if (i37 == i18) {
                                            j8 = 0;
                                        } else {
                                            j8 = prepare.getLong(i37);
                                        }
                                        columnIndex22 = i37;
                                        int i38 = columnIndex23;
                                        if (i38 != i18) {
                                            columnIndex23 = i38;
                                            int i39 = i2;
                                            arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z4, z6, z7, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(i38))), i, intToBackoffPolicy, j4, j5, i3, i6, j6, i9, (List) MapsKt.getValue(arrayMap, prepare.getText(i39)), (List) MapsKt.getValue(arrayMap2, prepare.getText(i39))));
                                            columnIndex3 = i8;
                                            columnIndex13 = i28;
                                            columnIndex = i39;
                                            columnIndex8 = i17;
                                            columnIndex20 = i36;
                                            columnIndex6 = i13;
                                            columnIndex18 = i34;
                                            columnIndex4 = i31;
                                            columnIndex14 = i29;
                                            columnIndex16 = i32;
                                            columnIndex21 = i19;
                                            i24 = i26;
                                            columnIndex7 = i15;
                                            columnIndex19 = i35;
                                            columnIndex5 = i11;
                                            columnIndex17 = i33;
                                            columnIndex15 = i30;
                                            columnIndex2 = i5;
                                            i21 = i27;
                                            i23 = i25;
                                        } else {
                                            throw new IllegalStateException("Missing value for a NON-NULL column 'content_uri_triggers', found NULL value instead.");
                                        }
                                    } else {
                                        throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_request', found NULL value instead.");
                                    }
                                } else {
                                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_type', found NULL value instead.");
                                }
                            } else {
                                throw new IllegalStateException("Missing value for a NON-NULL column 'backoff_policy', found NULL value instead.");
                            }
                        } else {
                            throw new IllegalStateException("Missing value for a NON-NULL column 'output', found NULL value instead.");
                        }
                    } else {
                        throw new IllegalStateException("Missing value for a NON-NULL column 'state', found NULL value instead.");
                    }
                } else {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'id', found NULL value instead.");
                }
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkInfoPojosLiveData$lambda$1(String str, RoomRawQuery roomRawQuery, RawWorkInfoDao_Impl rawWorkInfoDao_Impl, SQLiteConnection sQLiteConnection) {
        long j;
        long j2;
        long j3;
        int i;
        long j4;
        long j5;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j6;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z;
        boolean z2;
        int i12;
        int i13;
        boolean z3;
        boolean z4;
        int i14;
        int i15;
        boolean z5;
        boolean z6;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z7;
        long j7;
        long j8;
        int i20;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            roomRawQuery.getBindingFunction().invoke(prepare);
            int columnIndex = SQLiteStatementUtil.getColumnIndex(prepare, "id");
            int columnIndex2 = SQLiteStatementUtil.getColumnIndex(prepare, "state");
            int columnIndex3 = SQLiteStatementUtil.getColumnIndex(prepare, "output");
            int columnIndex4 = SQLiteStatementUtil.getColumnIndex(prepare, "initial_delay");
            int columnIndex5 = SQLiteStatementUtil.getColumnIndex(prepare, "interval_duration");
            int columnIndex6 = SQLiteStatementUtil.getColumnIndex(prepare, "flex_duration");
            int columnIndex7 = SQLiteStatementUtil.getColumnIndex(prepare, "run_attempt_count");
            int columnIndex8 = SQLiteStatementUtil.getColumnIndex(prepare, "backoff_policy");
            int columnIndex9 = SQLiteStatementUtil.getColumnIndex(prepare, "backoff_delay_duration");
            int columnIndex10 = SQLiteStatementUtil.getColumnIndex(prepare, "last_enqueue_time");
            int columnIndex11 = SQLiteStatementUtil.getColumnIndex(prepare, "period_count");
            int columnIndex12 = SQLiteStatementUtil.getColumnIndex(prepare, "generation");
            int columnIndex13 = SQLiteStatementUtil.getColumnIndex(prepare, "next_schedule_time_override");
            int columnIndex14 = SQLiteStatementUtil.getColumnIndex(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndex15 = SQLiteStatementUtil.getColumnIndex(prepare, "required_network_type");
            int columnIndex16 = SQLiteStatementUtil.getColumnIndex(prepare, "required_network_request");
            int columnIndex17 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_charging");
            int columnIndex18 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_device_idle");
            int columnIndex19 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_battery_not_low");
            int columnIndex20 = SQLiteStatementUtil.getColumnIndex(prepare, "requires_storage_not_low");
            int columnIndex21 = SQLiteStatementUtil.getColumnIndex(prepare, "trigger_content_update_delay");
            int columnIndex22 = SQLiteStatementUtil.getColumnIndex(prepare, "trigger_max_content_delay");
            int columnIndex23 = SQLiteStatementUtil.getColumnIndex(prepare, "content_uri_triggers");
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            int i21 = columnIndex12;
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (prepare.step()) {
                int i22 = columnIndex11;
                String text = prepare.getText(columnIndex);
                if (!arrayMap.containsKey(text)) {
                    i20 = columnIndex10;
                    arrayMap.put(text, new ArrayList());
                } else {
                    i20 = columnIndex10;
                }
                String text2 = prepare.getText(columnIndex);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
                columnIndex11 = i22;
                columnIndex10 = i20;
            }
            int i23 = columnIndex10;
            int i24 = columnIndex11;
            prepare.reset();
            rawWorkInfoDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            rawWorkInfoDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                if (columnIndex != -1) {
                    String text3 = prepare.getText(columnIndex);
                    if (columnIndex2 != -1) {
                        WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(columnIndex2));
                        if (columnIndex3 != -1) {
                            Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(columnIndex3));
                            if (columnIndex4 == -1) {
                                j = 0;
                            } else {
                                j = prepare.getLong(columnIndex4);
                            }
                            if (columnIndex5 == -1) {
                                j2 = 0;
                            } else {
                                j2 = prepare.getLong(columnIndex5);
                            }
                            if (columnIndex6 == -1) {
                                j3 = 0;
                            } else {
                                j3 = prepare.getLong(columnIndex6);
                            }
                            boolean z8 = false;
                            if (columnIndex7 == -1) {
                                i = 0;
                            } else {
                                i = (int) prepare.getLong(columnIndex7);
                            }
                            if (columnIndex8 != -1) {
                                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(columnIndex8));
                                if (columnIndex9 == -1) {
                                    j4 = 0;
                                } else {
                                    j4 = prepare.getLong(columnIndex9);
                                }
                                int i25 = i23;
                                if (i25 == -1) {
                                    j5 = 0;
                                } else {
                                    j5 = prepare.getLong(i25);
                                }
                                int i26 = i24;
                                if (i26 == -1) {
                                    i2 = columnIndex;
                                    i3 = 0;
                                    i4 = -1;
                                } else {
                                    i2 = columnIndex;
                                    i3 = (int) prepare.getLong(i26);
                                    i4 = -1;
                                }
                                int i27 = i21;
                                if (i27 == i4) {
                                    i5 = columnIndex2;
                                    i6 = 0;
                                    i7 = i4;
                                } else {
                                    i5 = columnIndex2;
                                    i6 = (int) prepare.getLong(i27);
                                    i7 = -1;
                                }
                                int i28 = columnIndex13;
                                if (i28 == i7) {
                                    j6 = 0;
                                } else {
                                    j6 = prepare.getLong(i28);
                                }
                                int i29 = columnIndex14;
                                if (i29 == i7) {
                                    i8 = columnIndex3;
                                    i9 = 0;
                                    i10 = i7;
                                } else {
                                    i8 = columnIndex3;
                                    i9 = (int) prepare.getLong(i29);
                                    i10 = -1;
                                }
                                int i30 = columnIndex15;
                                if (i30 != i10) {
                                    int i31 = columnIndex4;
                                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(i30));
                                    int i32 = columnIndex16;
                                    if (i32 != -1) {
                                        NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(i32));
                                        int i33 = columnIndex17;
                                        if (i33 == -1) {
                                            i11 = columnIndex5;
                                            z2 = false;
                                            i12 = -1;
                                        } else {
                                            i11 = columnIndex5;
                                            if (((int) prepare.getLong(i33)) != 0) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            z2 = z;
                                            i12 = -1;
                                        }
                                        int i34 = columnIndex18;
                                        if (i34 == i12) {
                                            i13 = columnIndex6;
                                            z4 = false;
                                            i14 = i12;
                                        } else {
                                            i13 = columnIndex6;
                                            if (((int) prepare.getLong(i34)) != 0) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            z4 = z3;
                                            i14 = -1;
                                        }
                                        int i35 = columnIndex19;
                                        if (i35 == i14) {
                                            i15 = columnIndex7;
                                            z6 = false;
                                            i16 = i14;
                                        } else {
                                            i15 = columnIndex7;
                                            if (((int) prepare.getLong(i35)) != 0) {
                                                z5 = true;
                                            } else {
                                                z5 = false;
                                            }
                                            z6 = z5;
                                            i16 = -1;
                                        }
                                        int i36 = columnIndex20;
                                        if (i36 == i16) {
                                            i17 = columnIndex8;
                                            i18 = i16;
                                            z7 = false;
                                            i19 = columnIndex21;
                                        } else {
                                            i17 = columnIndex8;
                                            if (((int) prepare.getLong(i36)) != 0) {
                                                z8 = true;
                                            }
                                            i18 = -1;
                                            i19 = columnIndex21;
                                            z7 = z8;
                                        }
                                        if (i19 == i18) {
                                            j7 = 0;
                                        } else {
                                            j7 = prepare.getLong(i19);
                                        }
                                        int i37 = columnIndex22;
                                        if (i37 == i18) {
                                            j8 = 0;
                                        } else {
                                            j8 = prepare.getLong(i37);
                                        }
                                        columnIndex22 = i37;
                                        int i38 = columnIndex23;
                                        if (i38 != i18) {
                                            columnIndex23 = i38;
                                            int i39 = i2;
                                            arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z4, z6, z7, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(i38))), i, intToBackoffPolicy, j4, j5, i3, i6, j6, i9, (List) MapsKt.getValue(arrayMap, prepare.getText(i39)), (List) MapsKt.getValue(arrayMap2, prepare.getText(i39))));
                                            columnIndex3 = i8;
                                            columnIndex13 = i28;
                                            columnIndex = i39;
                                            columnIndex8 = i17;
                                            columnIndex20 = i36;
                                            columnIndex6 = i13;
                                            columnIndex18 = i34;
                                            columnIndex4 = i31;
                                            columnIndex14 = i29;
                                            columnIndex16 = i32;
                                            columnIndex21 = i19;
                                            i24 = i26;
                                            columnIndex7 = i15;
                                            columnIndex19 = i35;
                                            columnIndex5 = i11;
                                            columnIndex17 = i33;
                                            columnIndex15 = i30;
                                            columnIndex2 = i5;
                                            i21 = i27;
                                            i23 = i25;
                                        } else {
                                            throw new IllegalStateException("Missing value for a NON-NULL column 'content_uri_triggers', found NULL value instead.");
                                        }
                                    } else {
                                        throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_request', found NULL value instead.");
                                    }
                                } else {
                                    throw new IllegalStateException("Missing value for a NON-NULL column 'required_network_type', found NULL value instead.");
                                }
                            } else {
                                throw new IllegalStateException("Missing value for a NON-NULL column 'backoff_policy', found NULL value instead.");
                            }
                        } else {
                            throw new IllegalStateException("Missing value for a NON-NULL column 'output', found NULL value instead.");
                        }
                    } else {
                        throw new IllegalStateException("Missing value for a NON-NULL column 'state', found NULL value instead.");
                    }
                } else {
                    throw new IllegalStateException("Missing value for a NON-NULL column 'id', found NULL value instead.");
                }
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    @NotNull
    public List<WorkSpec.WorkInfoPojo> getWorkInfoPojos(@NotNull SupportSQLiteQuery supportSQLiteQuery) {
        final RoomRawQuery roomRawQuery = RoomSQLiteQuery.Companion.copyFrom(supportSQLiteQuery).toRoomRawQuery();
        final String sql = roomRawQuery.getSql();
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workInfoPojos$lambda$0;
                workInfoPojos$lambda$0 = RawWorkInfoDao_Impl.getWorkInfoPojos$lambda$0(sql, roomRawQuery, this, (SQLiteConnection) obj);
                return workInfoPojos$lambda$0;
            }
        });
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    @NotNull
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosFlow(@NotNull SupportSQLiteQuery supportSQLiteQuery) {
        final RoomRawQuery roomRawQuery = RoomSQLiteQuery.Companion.copyFrom(supportSQLiteQuery).toRoomRawQuery();
        final String sql = roomRawQuery.getSql();
        return FlowUtil.createFlow(this.__db, false, new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workInfoPojosFlow$lambda$2;
                workInfoPojosFlow$lambda$2 = RawWorkInfoDao_Impl.getWorkInfoPojosFlow$lambda$2(sql, roomRawQuery, this, (SQLiteConnection) obj);
                return workInfoPojosFlow$lambda$2;
            }
        });
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    @NotNull
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(@NotNull SupportSQLiteQuery supportSQLiteQuery) {
        final RoomRawQuery roomRawQuery = RoomSQLiteQuery.Companion.copyFrom(supportSQLiteQuery).toRoomRawQuery();
        final String sql = roomRawQuery.getSql();
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, false, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workInfoPojosLiveData$lambda$1;
                workInfoPojosLiveData$lambda$1 = RawWorkInfoDao_Impl.getWorkInfoPojosLiveData$lambda$1(sql, roomRawQuery, this, (SQLiteConnection) obj);
                return workInfoPojosLiveData$lambda$1;
            }
        });
    }
}
