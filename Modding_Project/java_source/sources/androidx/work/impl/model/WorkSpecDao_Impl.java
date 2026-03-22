package androidx.work.impl.model;

import androidx.collection.ArrayMap;
import androidx.lifecycle.LiveData;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.coroutines.flow.Flow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\u0018\u0000 Z2\u00020\u0001:\u0001ZB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0016J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\u0014\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00130\u0018H\u0016J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00132\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\"\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130\u00182\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\"\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130!2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00132\u0006\u0010#\u001a\u00020\u0011H\u0016J\u001c\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130!2\u0006\u0010#\u001a\u00020\u0011H\u0016J\u001c\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130\u00182\u0006\u0010#\u001a\u00020\u0011H\u0016J\u0016\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00132\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u001c\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130\u00182\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u001c\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00130!2\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00110\u00132\u0006\u0010#\u001a\u00020\u0011H\u0016J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00110\u00132\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u000e\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\u000e\u0010.\u001a\b\u0012\u0004\u0012\u00020/0!H\u0016J\u0018\u00100\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001010\u00182\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u00102\u001a\b\u0012\u0004\u0012\u00020\b0\u00132\u0006\u00103\u001a\u000204H\u0016J\u000e\u00105\u001a\b\u0012\u0004\u0012\u00020\b0\u0013H\u0016J\u0016\u00106\u001a\b\u0012\u0004\u0012\u00020\b0\u00132\u0006\u00107\u001a\u000204H\u0016J\u000e\u00108\u001a\b\u0012\u0004\u0012\u00020\b0\u0013H\u0016J\u000e\u00109\u001a\b\u0012\u0004\u0012\u00020\b0\u0013H\u0016J\u0016\u0010:\u001a\b\u0012\u0004\u0012\u00020\b0\u00132\u0006\u0010;\u001a\u000201H\u0016J\b\u0010<\u001a\u000204H\u0016J\u0010\u0010=\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010>\u001a\u0002042\u0006\u0010?\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010@\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010A\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010B\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010C\u001a\u00020*H\u0016J\u0018\u0010D\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010E\u001a\u000201H\u0016J\u0010\u0010F\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010G\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010H\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010I\u001a\u000201H\u0016J\u0018\u0010J\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010K\u001a\u000204H\u0016J\u0018\u0010L\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010M\u001a\u000201H\u0016J\b\u0010N\u001a\u000204H\u0016J\b\u0010O\u001a\u00020\fH\u0016J\u0010\u0010P\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010Q\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010R\u001a\u000204H\u0016J*\u0010S\u001a\u00020\f2\u0006\u0010T\u001a\u00020U2\u0018\u0010V\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110X0WH\u0002J*\u0010Y\u001a\u00020\f2\u0006\u0010T\u001a\u00020U2\u0018\u0010V\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0X0WH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006["}, d2 = {"Landroidx/work/impl/model/WorkSpecDao_Impl;", "Landroidx/work/impl/model/WorkSpecDao;", "__db", "Landroidx/room/RoomDatabase;", "<init>", "(Landroidx/room/RoomDatabase;)V", "__insertAdapterOfWorkSpec", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/WorkSpec;", "__updateAdapterOfWorkSpec", "Landroidx/room/EntityDeleteOrUpdateAdapter;", "insertWorkSpec", "", "workSpec", "updateWorkSpec", "getWorkSpec", "id", "", "getWorkSpecIdAndStatesForName", "", "Landroidx/work/impl/model/WorkSpec$IdAndState;", "name", "getAllWorkSpecIds", "getAllWorkSpecIdsLiveData", "Landroidx/lifecycle/LiveData;", "getState", "Landroidx/work/WorkInfo$State;", "getWorkStatusPojoForId", "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "getWorkStatusPojoForIds", "ids", "getWorkStatusPojoLiveDataForIds", "getWorkStatusPojoFlowDataForIds", "Lkotlinx/coroutines/flow/Flow;", "getWorkStatusPojoForTag", "tag", "getWorkStatusPojoFlowForTag", "getWorkStatusPojoLiveDataForTag", "getWorkStatusPojoForName", "getWorkStatusPojoLiveDataForName", "getWorkStatusPojoFlowForName", "getInputsFromPrerequisites", "Landroidx/work/Data;", "getUnfinishedWorkWithTag", "getUnfinishedWorkWithName", "getAllUnfinishedWork", "hasUnfinishedWorkFlow", "", "getScheduleRequestedAtLiveData", "", "getEligibleWorkForScheduling", "schedulerLimit", "", "getEligibleWorkForSchedulingWithContentUris", "getAllEligibleWorkSpecsForScheduling", "maxLimit", "getScheduledWork", "getRunningWork", "getRecentlyCompletedWork", "startingAt", "countNonFinishedContentUriTriggerWorkers", "delete", "setState", "state", "setCancelledState", "incrementPeriodCount", "setOutput", "output", "setLastEnqueueTime", "enqueueTime", "incrementWorkSpecRunAttemptCount", "resetWorkSpecRunAttemptCount", "setNextScheduleTimeOverride", "nextScheduleTimeOverrideMillis", "resetWorkSpecNextScheduleTimeOverride", "overrideGeneration", "markWorkSpecScheduled", "startTime", "resetScheduledState", "pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast", "incrementGeneration", "setStopReason", "stopReason", "__fetchRelationshipWorkTagAsjavaLangString", "_connection", "Landroidx/sqlite/SQLiteConnection;", "_map", "Landroidx/collection/ArrayMap;", "", "__fetchRelationshipWorkProgressAsandroidxWorkData", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkSpecDao_Impl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkSpecDao_Impl.kt\nandroidx/work/impl/model/WorkSpecDao_Impl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3476:1\n1#2:3477\n*E\n"})
/* loaded from: classes3.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final RoomDatabase __db;
    @NotNull
    private final EntityInsertAdapter<WorkSpec> __insertAdapterOfWorkSpec = new EntityInsertAdapter<WorkSpec>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement sQLiteStatement, WorkSpec workSpec) {
            sQLiteStatement.mo48bindText(1, workSpec.id);
            sQLiteStatement.mo46bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
            sQLiteStatement.mo48bindText(3, workSpec.workerClassName);
            sQLiteStatement.mo48bindText(4, workSpec.inputMergerClassName);
            Data.Companion companion = Data.Companion;
            sQLiteStatement.mo44bindBlob(5, companion.toByteArrayInternalV1(workSpec.input));
            sQLiteStatement.mo44bindBlob(6, companion.toByteArrayInternalV1(workSpec.output));
            sQLiteStatement.mo46bindLong(7, workSpec.initialDelay);
            sQLiteStatement.mo46bindLong(8, workSpec.intervalDuration);
            sQLiteStatement.mo46bindLong(9, workSpec.flexDuration);
            sQLiteStatement.mo46bindLong(10, workSpec.runAttemptCount);
            sQLiteStatement.mo46bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
            sQLiteStatement.mo46bindLong(12, workSpec.backoffDelayDuration);
            sQLiteStatement.mo46bindLong(13, workSpec.lastEnqueueTime);
            sQLiteStatement.mo46bindLong(14, workSpec.minimumRetentionDuration);
            sQLiteStatement.mo46bindLong(15, workSpec.scheduleRequestedAt);
            sQLiteStatement.mo46bindLong(16, workSpec.expedited ? 1L : 0L);
            sQLiteStatement.mo46bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
            sQLiteStatement.mo46bindLong(18, workSpec.getPeriodCount());
            sQLiteStatement.mo46bindLong(19, workSpec.getGeneration());
            sQLiteStatement.mo46bindLong(20, workSpec.getNextScheduleTimeOverride());
            sQLiteStatement.mo46bindLong(21, workSpec.getNextScheduleTimeOverrideGeneration());
            sQLiteStatement.mo46bindLong(22, workSpec.getStopReason());
            String traceTag = workSpec.getTraceTag();
            if (traceTag == null) {
                sQLiteStatement.mo47bindNull(23);
            } else {
                sQLiteStatement.mo48bindText(23, traceTag);
            }
            Boolean backOffOnSystemInterruptions = workSpec.getBackOffOnSystemInterruptions();
            Integer valueOf = backOffOnSystemInterruptions != null ? Integer.valueOf(backOffOnSystemInterruptions.booleanValue() ? 1 : 0) : null;
            if (valueOf == null) {
                sQLiteStatement.mo47bindNull(24);
            } else {
                sQLiteStatement.mo46bindLong(24, valueOf.intValue());
            }
            Constraints constraints = workSpec.constraints;
            sQLiteStatement.mo46bindLong(25, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
            sQLiteStatement.mo44bindBlob(26, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat$work_runtime_release()));
            sQLiteStatement.mo46bindLong(27, constraints.requiresCharging() ? 1L : 0L);
            sQLiteStatement.mo46bindLong(28, constraints.requiresDeviceIdle() ? 1L : 0L);
            sQLiteStatement.mo46bindLong(29, constraints.requiresBatteryNotLow() ? 1L : 0L);
            sQLiteStatement.mo46bindLong(30, constraints.requiresStorageNotLow() ? 1L : 0L);
            sQLiteStatement.mo46bindLong(31, constraints.getContentTriggerUpdateDelayMillis());
            sQLiteStatement.mo46bindLong(32, constraints.getContentTriggerMaxDelayMillis());
            sQLiteStatement.mo44bindBlob(33, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
        }
    };
    @NotNull
    private final EntityDeleteOrUpdateAdapter<WorkSpec> __updateAdapterOfWorkSpec = new EntityDeleteOrUpdateAdapter<WorkSpec>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        public String createQuery() {
            return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
        }

        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        public void bind(SQLiteStatement sQLiteStatement, WorkSpec workSpec) {
            sQLiteStatement.mo48bindText(1, workSpec.id);
            sQLiteStatement.mo46bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
            sQLiteStatement.mo48bindText(3, workSpec.workerClassName);
            sQLiteStatement.mo48bindText(4, workSpec.inputMergerClassName);
            Data.Companion companion = Data.Companion;
            sQLiteStatement.mo44bindBlob(5, companion.toByteArrayInternalV1(workSpec.input));
            sQLiteStatement.mo44bindBlob(6, companion.toByteArrayInternalV1(workSpec.output));
            sQLiteStatement.mo46bindLong(7, workSpec.initialDelay);
            sQLiteStatement.mo46bindLong(8, workSpec.intervalDuration);
            sQLiteStatement.mo46bindLong(9, workSpec.flexDuration);
            sQLiteStatement.mo46bindLong(10, workSpec.runAttemptCount);
            sQLiteStatement.mo46bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
            sQLiteStatement.mo46bindLong(12, workSpec.backoffDelayDuration);
            sQLiteStatement.mo46bindLong(13, workSpec.lastEnqueueTime);
            sQLiteStatement.mo46bindLong(14, workSpec.minimumRetentionDuration);
            sQLiteStatement.mo46bindLong(15, workSpec.scheduleRequestedAt);
            sQLiteStatement.mo46bindLong(16, workSpec.expedited ? 1L : 0L);
            sQLiteStatement.mo46bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
            sQLiteStatement.mo46bindLong(18, workSpec.getPeriodCount());
            sQLiteStatement.mo46bindLong(19, workSpec.getGeneration());
            sQLiteStatement.mo46bindLong(20, workSpec.getNextScheduleTimeOverride());
            sQLiteStatement.mo46bindLong(21, workSpec.getNextScheduleTimeOverrideGeneration());
            sQLiteStatement.mo46bindLong(22, workSpec.getStopReason());
            String traceTag = workSpec.getTraceTag();
            if (traceTag == null) {
                sQLiteStatement.mo47bindNull(23);
            } else {
                sQLiteStatement.mo48bindText(23, traceTag);
            }
            Boolean backOffOnSystemInterruptions = workSpec.getBackOffOnSystemInterruptions();
            Integer valueOf = backOffOnSystemInterruptions != null ? Integer.valueOf(backOffOnSystemInterruptions.booleanValue() ? 1 : 0) : null;
            if (valueOf == null) {
                sQLiteStatement.mo47bindNull(24);
            } else {
                sQLiteStatement.mo46bindLong(24, valueOf.intValue());
            }
            Constraints constraints = workSpec.constraints;
            sQLiteStatement.mo46bindLong(25, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
            sQLiteStatement.mo44bindBlob(26, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat$work_runtime_release()));
            sQLiteStatement.mo46bindLong(27, constraints.requiresCharging() ? 1L : 0L);
            sQLiteStatement.mo46bindLong(28, constraints.requiresDeviceIdle() ? 1L : 0L);
            sQLiteStatement.mo46bindLong(29, constraints.requiresBatteryNotLow() ? 1L : 0L);
            sQLiteStatement.mo46bindLong(30, constraints.requiresStorageNotLow() ? 1L : 0L);
            sQLiteStatement.mo46bindLong(31, constraints.getContentTriggerUpdateDelayMillis());
            sQLiteStatement.mo46bindLong(32, constraints.getContentTriggerMaxDelayMillis());
            sQLiteStatement.mo44bindBlob(33, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
            sQLiteStatement.mo48bindText(34, workSpec.id);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;", "", "<init>", "()V", "getRequiredConverters", "", "Lkotlin/reflect/KClass;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
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

    public WorkSpecDao_Impl(@NotNull RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    private final void __fetchRelationshipWorkProgressAsandroidxWorkData(final SQLiteConnection sQLiteConnection, ArrayMap<String, List<Data>> arrayMap) {
        Set<String> keySet = arrayMap.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            RelationUtil.recursiveFetchArrayMap(arrayMap, true, new Function1() { // from class: androidx.work.impl.model.Illllllllllllllllllllllllll
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$53;
                    __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$53 = WorkSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData$lambda$53(WorkSpecDao_Impl.this, sQLiteConnection, (ArrayMap) obj);
                    return __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$53;
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
    public static final Unit __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$53(WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap);
        return Unit.INSTANCE;
    }

    private final void __fetchRelationshipWorkTagAsjavaLangString(final SQLiteConnection sQLiteConnection, ArrayMap<String, List<String>> arrayMap) {
        Set<String> keySet = arrayMap.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            RelationUtil.recursiveFetchArrayMap(arrayMap, true, new Function1() { // from class: androidx.work.impl.model.Illlllllllllllllllllllll
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit __fetchRelationshipWorkTagAsjavaLangString$lambda$52;
                    __fetchRelationshipWorkTagAsjavaLangString$lambda$52 = WorkSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString$lambda$52(WorkSpecDao_Impl.this, sQLiteConnection, (ArrayMap) obj);
                    return __fetchRelationshipWorkTagAsjavaLangString$lambda$52;
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
    public static final Unit __fetchRelationshipWorkTagAsjavaLangString$lambda$52(WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int countNonFinishedContentUriTriggerWorkers$lambda$36(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            int i = 0;
            if (prepare.step()) {
                i = (int) prepare.getLong(0);
            }
            return i;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit delete$lambda$37(String str, String str2, SQLiteConnection sQLiteConnection) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllEligibleWorkSpecsForScheduling$lambda$29(String str, int i, SQLiteConnection sQLiteConnection) {
        boolean z;
        String text;
        int i2;
        Integer valueOf;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo46bindLong(1, i);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text2 = prepare.getText(columnIndexOrThrow);
                int i3 = columnIndexOrThrow13;
                int i4 = columnIndexOrThrow14;
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(columnIndexOrThrow2));
                String text3 = prepare.getText(columnIndexOrThrow3);
                String text4 = prepare.getText(columnIndexOrThrow4);
                byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data fromByteArray = companion.fromByteArray(blob);
                Data fromByteArray2 = companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                long j = prepare.getLong(columnIndexOrThrow7);
                long j2 = prepare.getLong(columnIndexOrThrow8);
                long j3 = prepare.getLong(columnIndexOrThrow9);
                int i5 = (int) prepare.getLong(columnIndexOrThrow10);
                int i6 = columnIndexOrThrow;
                int i7 = columnIndexOrThrow2;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                long j4 = prepare.getLong(columnIndexOrThrow12);
                long j5 = prepare.getLong(i3);
                long j6 = prepare.getLong(i4);
                int i8 = columnIndexOrThrow15;
                long j7 = prepare.getLong(i8);
                columnIndexOrThrow15 = i8;
                int i9 = columnIndexOrThrow16;
                int i10 = columnIndexOrThrow3;
                if (((int) prepare.getLong(i9)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i11 = columnIndexOrThrow17;
                int i12 = columnIndexOrThrow4;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) prepare.getLong(i11));
                int i13 = columnIndexOrThrow18;
                int i14 = (int) prepare.getLong(i13);
                int i15 = columnIndexOrThrow19;
                int i16 = (int) prepare.getLong(i15);
                int i17 = columnIndexOrThrow20;
                long j8 = prepare.getLong(i17);
                int i18 = columnIndexOrThrow21;
                int i19 = (int) prepare.getLong(i18);
                columnIndexOrThrow21 = i18;
                int i20 = columnIndexOrThrow22;
                int i21 = (int) prepare.getLong(i20);
                int i22 = columnIndexOrThrow23;
                Boolean bool = null;
                if (prepare.isNull(i22)) {
                    text = null;
                } else {
                    text = prepare.getText(i22);
                }
                int i23 = columnIndexOrThrow24;
                if (prepare.isNull(i23)) {
                    i2 = i22;
                    columnIndexOrThrow22 = i20;
                    valueOf = null;
                } else {
                    i2 = i22;
                    columnIndexOrThrow22 = i20;
                    valueOf = Integer.valueOf((int) prepare.getLong(i23));
                }
                if (valueOf != null) {
                    if (valueOf.intValue() != 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    bool = Boolean.valueOf(z6);
                }
                Boolean bool2 = bool;
                int i24 = columnIndexOrThrow25;
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(i24));
                int i25 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(i25));
                int i26 = columnIndexOrThrow27;
                if (((int) prepare.getLong(i26)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                int i27 = columnIndexOrThrow28;
                if (((int) prepare.getLong(i27)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i28 = columnIndexOrThrow29;
                if (((int) prepare.getLong(i28)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                columnIndexOrThrow29 = i28;
                int i29 = columnIndexOrThrow30;
                if (((int) prepare.getLong(i29)) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                int i30 = columnIndexOrThrow31;
                int i31 = columnIndexOrThrow32;
                columnIndexOrThrow31 = i30;
                int i32 = columnIndexOrThrow33;
                arrayList.add(new WorkSpec(text2, intToState, text3, text4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, prepare.getLong(i30), prepare.getLong(i31), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(i32))), i5, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21, text, bool2));
                columnIndexOrThrow28 = i27;
                columnIndexOrThrow4 = i12;
                columnIndexOrThrow17 = i11;
                columnIndexOrThrow18 = i13;
                columnIndexOrThrow19 = i15;
                columnIndexOrThrow20 = i17;
                columnIndexOrThrow23 = i2;
                columnIndexOrThrow24 = i23;
                columnIndexOrThrow25 = i24;
                columnIndexOrThrow26 = i25;
                columnIndexOrThrow27 = i26;
                columnIndexOrThrow33 = i32;
                columnIndexOrThrow32 = i31;
                columnIndexOrThrow30 = i29;
                columnIndexOrThrow = i6;
                columnIndexOrThrow13 = i3;
                columnIndexOrThrow14 = i4;
                columnIndexOrThrow2 = i7;
                columnIndexOrThrow3 = i10;
                columnIndexOrThrow16 = i9;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllUnfinishedWork$lambda$21(String str, SQLiteConnection sQLiteConnection) {
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
    public static final List getAllWorkSpecIds$lambda$5(String str, SQLiteConnection sQLiteConnection) {
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
    public static final List getAllWorkSpecIdsLiveData$lambda$6(String str, SQLiteConnection sQLiteConnection) {
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
    public static final List getEligibleWorkForScheduling$lambda$25(String str, int i, SQLiteConnection sQLiteConnection) {
        boolean z;
        String text;
        int i2;
        Integer valueOf;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo46bindLong(1, i);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text2 = prepare.getText(columnIndexOrThrow);
                int i3 = columnIndexOrThrow13;
                int i4 = columnIndexOrThrow14;
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(columnIndexOrThrow2));
                String text3 = prepare.getText(columnIndexOrThrow3);
                String text4 = prepare.getText(columnIndexOrThrow4);
                byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data fromByteArray = companion.fromByteArray(blob);
                Data fromByteArray2 = companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                long j = prepare.getLong(columnIndexOrThrow7);
                long j2 = prepare.getLong(columnIndexOrThrow8);
                long j3 = prepare.getLong(columnIndexOrThrow9);
                int i5 = (int) prepare.getLong(columnIndexOrThrow10);
                int i6 = columnIndexOrThrow;
                int i7 = columnIndexOrThrow2;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                long j4 = prepare.getLong(columnIndexOrThrow12);
                long j5 = prepare.getLong(i3);
                long j6 = prepare.getLong(i4);
                int i8 = columnIndexOrThrow15;
                long j7 = prepare.getLong(i8);
                columnIndexOrThrow15 = i8;
                int i9 = columnIndexOrThrow16;
                int i10 = columnIndexOrThrow3;
                if (((int) prepare.getLong(i9)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i11 = columnIndexOrThrow17;
                int i12 = columnIndexOrThrow4;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) prepare.getLong(i11));
                int i13 = columnIndexOrThrow18;
                int i14 = (int) prepare.getLong(i13);
                int i15 = columnIndexOrThrow19;
                int i16 = (int) prepare.getLong(i15);
                int i17 = columnIndexOrThrow20;
                long j8 = prepare.getLong(i17);
                int i18 = columnIndexOrThrow21;
                int i19 = (int) prepare.getLong(i18);
                columnIndexOrThrow21 = i18;
                int i20 = columnIndexOrThrow22;
                int i21 = (int) prepare.getLong(i20);
                int i22 = columnIndexOrThrow23;
                Boolean bool = null;
                if (prepare.isNull(i22)) {
                    text = null;
                } else {
                    text = prepare.getText(i22);
                }
                int i23 = columnIndexOrThrow24;
                if (prepare.isNull(i23)) {
                    i2 = i22;
                    columnIndexOrThrow22 = i20;
                    valueOf = null;
                } else {
                    i2 = i22;
                    columnIndexOrThrow22 = i20;
                    valueOf = Integer.valueOf((int) prepare.getLong(i23));
                }
                if (valueOf != null) {
                    if (valueOf.intValue() != 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    bool = Boolean.valueOf(z6);
                }
                Boolean bool2 = bool;
                int i24 = columnIndexOrThrow25;
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(i24));
                int i25 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(i25));
                int i26 = columnIndexOrThrow27;
                if (((int) prepare.getLong(i26)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                int i27 = columnIndexOrThrow28;
                if (((int) prepare.getLong(i27)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i28 = columnIndexOrThrow29;
                if (((int) prepare.getLong(i28)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                columnIndexOrThrow29 = i28;
                int i29 = columnIndexOrThrow30;
                if (((int) prepare.getLong(i29)) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                int i30 = columnIndexOrThrow31;
                int i31 = columnIndexOrThrow32;
                columnIndexOrThrow31 = i30;
                int i32 = columnIndexOrThrow33;
                arrayList.add(new WorkSpec(text2, intToState, text3, text4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, prepare.getLong(i30), prepare.getLong(i31), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(i32))), i5, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21, text, bool2));
                columnIndexOrThrow28 = i27;
                columnIndexOrThrow4 = i12;
                columnIndexOrThrow17 = i11;
                columnIndexOrThrow18 = i13;
                columnIndexOrThrow19 = i15;
                columnIndexOrThrow20 = i17;
                columnIndexOrThrow23 = i2;
                columnIndexOrThrow24 = i23;
                columnIndexOrThrow25 = i24;
                columnIndexOrThrow26 = i25;
                columnIndexOrThrow27 = i26;
                columnIndexOrThrow33 = i32;
                columnIndexOrThrow32 = i31;
                columnIndexOrThrow30 = i29;
                columnIndexOrThrow = i6;
                columnIndexOrThrow13 = i3;
                columnIndexOrThrow14 = i4;
                columnIndexOrThrow2 = i7;
                columnIndexOrThrow3 = i10;
                columnIndexOrThrow16 = i9;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getEligibleWorkForSchedulingWithContentUris$lambda$27(String str, SQLiteConnection sQLiteConnection) {
        boolean z;
        String text;
        int i;
        int i2;
        Integer valueOf;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text2 = prepare.getText(columnIndexOrThrow);
                int i3 = columnIndexOrThrow14;
                ArrayList arrayList2 = arrayList;
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(columnIndexOrThrow2));
                String text3 = prepare.getText(columnIndexOrThrow3);
                String text4 = prepare.getText(columnIndexOrThrow4);
                byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data fromByteArray = companion.fromByteArray(blob);
                Data fromByteArray2 = companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                long j = prepare.getLong(columnIndexOrThrow7);
                long j2 = prepare.getLong(columnIndexOrThrow8);
                long j3 = prepare.getLong(columnIndexOrThrow9);
                int i4 = (int) prepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow2;
                int i6 = columnIndexOrThrow3;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                long j4 = prepare.getLong(columnIndexOrThrow12);
                long j5 = prepare.getLong(columnIndexOrThrow13);
                long j6 = prepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j7 = prepare.getLong(i7);
                int i8 = columnIndexOrThrow;
                int i9 = columnIndexOrThrow16;
                if (((int) prepare.getLong(i9)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) prepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = columnIndexOrThrow5;
                int i14 = (int) prepare.getLong(i12);
                int i15 = columnIndexOrThrow19;
                int i16 = (int) prepare.getLong(i15);
                int i17 = columnIndexOrThrow20;
                long j8 = prepare.getLong(i17);
                int i18 = columnIndexOrThrow21;
                int i19 = (int) prepare.getLong(i18);
                int i20 = columnIndexOrThrow22;
                int i21 = (int) prepare.getLong(i20);
                int i22 = columnIndexOrThrow23;
                Boolean bool = null;
                if (prepare.isNull(i22)) {
                    text = null;
                } else {
                    text = prepare.getText(i22);
                }
                int i23 = columnIndexOrThrow24;
                if (prepare.isNull(i23)) {
                    i = i19;
                    i2 = i20;
                    valueOf = null;
                } else {
                    i = i19;
                    i2 = i20;
                    valueOf = Integer.valueOf((int) prepare.getLong(i23));
                }
                if (valueOf != null) {
                    if (valueOf.intValue() != 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    bool = Boolean.valueOf(z6);
                }
                int i24 = columnIndexOrThrow25;
                Boolean bool2 = bool;
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(i24));
                int i25 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(i25));
                columnIndexOrThrow25 = i24;
                columnIndexOrThrow26 = i25;
                int i26 = columnIndexOrThrow27;
                if (((int) prepare.getLong(i26)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                columnIndexOrThrow27 = i26;
                int i27 = columnIndexOrThrow28;
                if (((int) prepare.getLong(i27)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i28 = columnIndexOrThrow29;
                if (((int) prepare.getLong(i28)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                columnIndexOrThrow29 = i28;
                int i29 = columnIndexOrThrow30;
                if (((int) prepare.getLong(i29)) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                int i30 = columnIndexOrThrow31;
                int i31 = columnIndexOrThrow32;
                int i32 = columnIndexOrThrow33;
                columnIndexOrThrow33 = i32;
                arrayList2.add(new WorkSpec(text2, intToState, text3, text4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, prepare.getLong(i30), prepare.getLong(i31), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(i32))), i4, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i, i21, text, bool2));
                columnIndexOrThrow30 = i29;
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow19 = i15;
                columnIndexOrThrow22 = i2;
                columnIndexOrThrow24 = i23;
                columnIndexOrThrow31 = i30;
                columnIndexOrThrow32 = i31;
                columnIndexOrThrow2 = i5;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow3 = i6;
                arrayList = arrayList2;
                columnIndexOrThrow = i8;
                columnIndexOrThrow15 = i7;
                columnIndexOrThrow16 = i9;
                columnIndexOrThrow20 = i17;
                columnIndexOrThrow21 = i18;
                columnIndexOrThrow23 = i22;
                columnIndexOrThrow28 = i27;
                columnIndexOrThrow5 = i13;
                columnIndexOrThrow18 = i12;
            }
            ArrayList arrayList3 = arrayList;
            prepare.close();
            return arrayList3;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getInputsFromPrerequisites$lambda$18(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                arrayList.add(Data.Companion.fromByteArray(prepare.getBlob(0)));
            }
            return arrayList;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getRecentlyCompletedWork$lambda$35(String str, long j, SQLiteConnection sQLiteConnection) {
        boolean z;
        String text;
        int i;
        Integer valueOf;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo46bindLong(1, j);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text2 = prepare.getText(columnIndexOrThrow);
                int i2 = columnIndexOrThrow13;
                int i3 = columnIndexOrThrow14;
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(columnIndexOrThrow2));
                String text3 = prepare.getText(columnIndexOrThrow3);
                String text4 = prepare.getText(columnIndexOrThrow4);
                byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data fromByteArray = companion.fromByteArray(blob);
                Data fromByteArray2 = companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                long j2 = prepare.getLong(columnIndexOrThrow7);
                long j3 = prepare.getLong(columnIndexOrThrow8);
                long j4 = prepare.getLong(columnIndexOrThrow9);
                int i4 = (int) prepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow;
                int i6 = columnIndexOrThrow2;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                long j5 = prepare.getLong(columnIndexOrThrow12);
                long j6 = prepare.getLong(i2);
                long j7 = prepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j8 = prepare.getLong(i7);
                columnIndexOrThrow15 = i7;
                int i8 = columnIndexOrThrow16;
                int i9 = columnIndexOrThrow3;
                if (((int) prepare.getLong(i8)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) prepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = (int) prepare.getLong(i12);
                int i14 = columnIndexOrThrow19;
                int i15 = (int) prepare.getLong(i14);
                int i16 = columnIndexOrThrow20;
                long j9 = prepare.getLong(i16);
                int i17 = columnIndexOrThrow21;
                int i18 = (int) prepare.getLong(i17);
                columnIndexOrThrow21 = i17;
                int i19 = columnIndexOrThrow22;
                int i20 = (int) prepare.getLong(i19);
                int i21 = columnIndexOrThrow23;
                Boolean bool = null;
                if (prepare.isNull(i21)) {
                    text = null;
                } else {
                    text = prepare.getText(i21);
                }
                int i22 = columnIndexOrThrow24;
                if (prepare.isNull(i22)) {
                    i = i21;
                    columnIndexOrThrow22 = i19;
                    valueOf = null;
                } else {
                    i = i21;
                    columnIndexOrThrow22 = i19;
                    valueOf = Integer.valueOf((int) prepare.getLong(i22));
                }
                if (valueOf != null) {
                    if (valueOf.intValue() != 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    bool = Boolean.valueOf(z6);
                }
                Boolean bool2 = bool;
                int i23 = columnIndexOrThrow25;
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(i23));
                int i24 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(i24));
                int i25 = columnIndexOrThrow27;
                if (((int) prepare.getLong(i25)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                int i26 = columnIndexOrThrow28;
                if (((int) prepare.getLong(i26)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i27 = columnIndexOrThrow29;
                if (((int) prepare.getLong(i27)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                columnIndexOrThrow29 = i27;
                int i28 = columnIndexOrThrow30;
                if (((int) prepare.getLong(i28)) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                int i29 = columnIndexOrThrow31;
                int i30 = columnIndexOrThrow32;
                columnIndexOrThrow31 = i29;
                int i31 = columnIndexOrThrow33;
                arrayList.add(new WorkSpec(text2, intToState, text3, text4, fromByteArray, fromByteArray2, j2, j3, j4, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, prepare.getLong(i29), prepare.getLong(i30), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(i31))), i4, intToBackoffPolicy, j5, j6, j7, j8, z, intToOutOfQuotaPolicy, i13, i15, j9, i18, i20, text, bool2));
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow18 = i12;
                columnIndexOrThrow19 = i14;
                columnIndexOrThrow20 = i16;
                columnIndexOrThrow23 = i;
                columnIndexOrThrow24 = i22;
                columnIndexOrThrow25 = i23;
                columnIndexOrThrow26 = i24;
                columnIndexOrThrow27 = i25;
                columnIndexOrThrow28 = i26;
                columnIndexOrThrow33 = i31;
                columnIndexOrThrow32 = i30;
                columnIndexOrThrow30 = i28;
                columnIndexOrThrow = i5;
                columnIndexOrThrow13 = i2;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow2 = i6;
                columnIndexOrThrow3 = i9;
                columnIndexOrThrow16 = i8;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getRunningWork$lambda$33(String str, SQLiteConnection sQLiteConnection) {
        boolean z;
        String text;
        int i;
        int i2;
        Integer valueOf;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text2 = prepare.getText(columnIndexOrThrow);
                int i3 = columnIndexOrThrow14;
                ArrayList arrayList2 = arrayList;
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(columnIndexOrThrow2));
                String text3 = prepare.getText(columnIndexOrThrow3);
                String text4 = prepare.getText(columnIndexOrThrow4);
                byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data fromByteArray = companion.fromByteArray(blob);
                Data fromByteArray2 = companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                long j = prepare.getLong(columnIndexOrThrow7);
                long j2 = prepare.getLong(columnIndexOrThrow8);
                long j3 = prepare.getLong(columnIndexOrThrow9);
                int i4 = (int) prepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow2;
                int i6 = columnIndexOrThrow3;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                long j4 = prepare.getLong(columnIndexOrThrow12);
                long j5 = prepare.getLong(columnIndexOrThrow13);
                long j6 = prepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j7 = prepare.getLong(i7);
                int i8 = columnIndexOrThrow;
                int i9 = columnIndexOrThrow16;
                if (((int) prepare.getLong(i9)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) prepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = columnIndexOrThrow5;
                int i14 = (int) prepare.getLong(i12);
                int i15 = columnIndexOrThrow19;
                int i16 = (int) prepare.getLong(i15);
                int i17 = columnIndexOrThrow20;
                long j8 = prepare.getLong(i17);
                int i18 = columnIndexOrThrow21;
                int i19 = (int) prepare.getLong(i18);
                int i20 = columnIndexOrThrow22;
                int i21 = (int) prepare.getLong(i20);
                int i22 = columnIndexOrThrow23;
                Boolean bool = null;
                if (prepare.isNull(i22)) {
                    text = null;
                } else {
                    text = prepare.getText(i22);
                }
                int i23 = columnIndexOrThrow24;
                if (prepare.isNull(i23)) {
                    i = i19;
                    i2 = i20;
                    valueOf = null;
                } else {
                    i = i19;
                    i2 = i20;
                    valueOf = Integer.valueOf((int) prepare.getLong(i23));
                }
                if (valueOf != null) {
                    if (valueOf.intValue() != 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    bool = Boolean.valueOf(z6);
                }
                int i24 = columnIndexOrThrow25;
                Boolean bool2 = bool;
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(i24));
                int i25 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(i25));
                columnIndexOrThrow25 = i24;
                columnIndexOrThrow26 = i25;
                int i26 = columnIndexOrThrow27;
                if (((int) prepare.getLong(i26)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                columnIndexOrThrow27 = i26;
                int i27 = columnIndexOrThrow28;
                if (((int) prepare.getLong(i27)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i28 = columnIndexOrThrow29;
                if (((int) prepare.getLong(i28)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                columnIndexOrThrow29 = i28;
                int i29 = columnIndexOrThrow30;
                if (((int) prepare.getLong(i29)) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                int i30 = columnIndexOrThrow31;
                int i31 = columnIndexOrThrow32;
                int i32 = columnIndexOrThrow33;
                columnIndexOrThrow33 = i32;
                arrayList2.add(new WorkSpec(text2, intToState, text3, text4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, prepare.getLong(i30), prepare.getLong(i31), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(i32))), i4, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i, i21, text, bool2));
                columnIndexOrThrow30 = i29;
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow19 = i15;
                columnIndexOrThrow22 = i2;
                columnIndexOrThrow24 = i23;
                columnIndexOrThrow31 = i30;
                columnIndexOrThrow32 = i31;
                columnIndexOrThrow2 = i5;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow3 = i6;
                arrayList = arrayList2;
                columnIndexOrThrow = i8;
                columnIndexOrThrow15 = i7;
                columnIndexOrThrow16 = i9;
                columnIndexOrThrow20 = i17;
                columnIndexOrThrow21 = i18;
                columnIndexOrThrow23 = i22;
                columnIndexOrThrow28 = i27;
                columnIndexOrThrow5 = i13;
                columnIndexOrThrow18 = i12;
            }
            ArrayList arrayList3 = arrayList;
            prepare.close();
            return arrayList3;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long getScheduleRequestedAtLiveData$lambda$23(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            Long l = null;
            if (prepare.step() && !prepare.isNull(0)) {
                l = Long.valueOf(prepare.getLong(0));
            }
            return l;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getScheduledWork$lambda$31(String str, SQLiteConnection sQLiteConnection) {
        boolean z;
        String text;
        int i;
        int i2;
        Integer valueOf;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text2 = prepare.getText(columnIndexOrThrow);
                int i3 = columnIndexOrThrow14;
                ArrayList arrayList2 = arrayList;
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(columnIndexOrThrow2));
                String text3 = prepare.getText(columnIndexOrThrow3);
                String text4 = prepare.getText(columnIndexOrThrow4);
                byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data fromByteArray = companion.fromByteArray(blob);
                Data fromByteArray2 = companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                long j = prepare.getLong(columnIndexOrThrow7);
                long j2 = prepare.getLong(columnIndexOrThrow8);
                long j3 = prepare.getLong(columnIndexOrThrow9);
                int i4 = (int) prepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow2;
                int i6 = columnIndexOrThrow3;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                long j4 = prepare.getLong(columnIndexOrThrow12);
                long j5 = prepare.getLong(columnIndexOrThrow13);
                long j6 = prepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j7 = prepare.getLong(i7);
                int i8 = columnIndexOrThrow;
                int i9 = columnIndexOrThrow16;
                if (((int) prepare.getLong(i9)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) prepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = columnIndexOrThrow5;
                int i14 = (int) prepare.getLong(i12);
                int i15 = columnIndexOrThrow19;
                int i16 = (int) prepare.getLong(i15);
                int i17 = columnIndexOrThrow20;
                long j8 = prepare.getLong(i17);
                int i18 = columnIndexOrThrow21;
                int i19 = (int) prepare.getLong(i18);
                int i20 = columnIndexOrThrow22;
                int i21 = (int) prepare.getLong(i20);
                int i22 = columnIndexOrThrow23;
                Boolean bool = null;
                if (prepare.isNull(i22)) {
                    text = null;
                } else {
                    text = prepare.getText(i22);
                }
                int i23 = columnIndexOrThrow24;
                if (prepare.isNull(i23)) {
                    i = i19;
                    i2 = i20;
                    valueOf = null;
                } else {
                    i = i19;
                    i2 = i20;
                    valueOf = Integer.valueOf((int) prepare.getLong(i23));
                }
                if (valueOf != null) {
                    if (valueOf.intValue() != 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    bool = Boolean.valueOf(z6);
                }
                int i24 = columnIndexOrThrow25;
                Boolean bool2 = bool;
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(i24));
                int i25 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(i25));
                columnIndexOrThrow25 = i24;
                columnIndexOrThrow26 = i25;
                int i26 = columnIndexOrThrow27;
                if (((int) prepare.getLong(i26)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                columnIndexOrThrow27 = i26;
                int i27 = columnIndexOrThrow28;
                if (((int) prepare.getLong(i27)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i28 = columnIndexOrThrow29;
                if (((int) prepare.getLong(i28)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                columnIndexOrThrow29 = i28;
                int i29 = columnIndexOrThrow30;
                if (((int) prepare.getLong(i29)) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                int i30 = columnIndexOrThrow31;
                int i31 = columnIndexOrThrow32;
                int i32 = columnIndexOrThrow33;
                columnIndexOrThrow33 = i32;
                arrayList2.add(new WorkSpec(text2, intToState, text3, text4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, prepare.getLong(i30), prepare.getLong(i31), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(i32))), i4, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i, i21, text, bool2));
                columnIndexOrThrow30 = i29;
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow19 = i15;
                columnIndexOrThrow22 = i2;
                columnIndexOrThrow24 = i23;
                columnIndexOrThrow31 = i30;
                columnIndexOrThrow32 = i31;
                columnIndexOrThrow2 = i5;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow3 = i6;
                arrayList = arrayList2;
                columnIndexOrThrow = i8;
                columnIndexOrThrow15 = i7;
                columnIndexOrThrow16 = i9;
                columnIndexOrThrow20 = i17;
                columnIndexOrThrow21 = i18;
                columnIndexOrThrow23 = i22;
                columnIndexOrThrow28 = i27;
                columnIndexOrThrow5 = i13;
                columnIndexOrThrow18 = i12;
            }
            ArrayList arrayList3 = arrayList;
            prepare.close();
            return arrayList3;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkInfo.State getState$lambda$7(String str, String str2, SQLiteConnection sQLiteConnection) {
        Integer valueOf;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            WorkInfo.State state = null;
            if (prepare.step()) {
                if (prepare.isNull(0)) {
                    valueOf = null;
                } else {
                    valueOf = Integer.valueOf((int) prepare.getLong(0));
                }
                if (valueOf != null) {
                    state = WorkTypeConverters.intToState(valueOf.intValue());
                }
            }
            return state;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getUnfinishedWorkWithName$lambda$20(String str, String str2, SQLiteConnection sQLiteConnection) {
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
    public static final List getUnfinishedWorkWithTag$lambda$19(String str, String str2, SQLiteConnection sQLiteConnection) {
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
    public static final WorkSpec getWorkSpec$lambda$3(String str, String str2, SQLiteConnection sQLiteConnection) {
        boolean z;
        String text;
        Integer valueOf;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "content_uri_triggers");
            WorkSpec workSpec = null;
            Boolean bool = null;
            if (prepare.step()) {
                String text2 = prepare.getText(columnIndexOrThrow);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(columnIndexOrThrow2));
                String text3 = prepare.getText(columnIndexOrThrow3);
                String text4 = prepare.getText(columnIndexOrThrow4);
                byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.Companion;
                Data fromByteArray = companion.fromByteArray(blob);
                Data fromByteArray2 = companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                long j = prepare.getLong(columnIndexOrThrow7);
                long j2 = prepare.getLong(columnIndexOrThrow8);
                long j3 = prepare.getLong(columnIndexOrThrow9);
                int i = (int) prepare.getLong(columnIndexOrThrow10);
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                long j4 = prepare.getLong(columnIndexOrThrow12);
                long j5 = prepare.getLong(columnIndexOrThrow13);
                long j6 = prepare.getLong(columnIndexOrThrow14);
                long j7 = prepare.getLong(columnIndexOrThrow15);
                if (((int) prepare.getLong(columnIndexOrThrow16)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) prepare.getLong(columnIndexOrThrow17));
                int i2 = (int) prepare.getLong(columnIndexOrThrow18);
                int i3 = (int) prepare.getLong(columnIndexOrThrow19);
                long j8 = prepare.getLong(columnIndexOrThrow20);
                int i4 = (int) prepare.getLong(columnIndexOrThrow21);
                int i5 = (int) prepare.getLong(columnIndexOrThrow22);
                if (prepare.isNull(columnIndexOrThrow23)) {
                    text = null;
                } else {
                    text = prepare.getText(columnIndexOrThrow23);
                }
                if (prepare.isNull(columnIndexOrThrow24)) {
                    valueOf = null;
                } else {
                    valueOf = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow24));
                }
                if (valueOf != null) {
                    if (valueOf.intValue() != 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    bool = Boolean.valueOf(z6);
                }
                Boolean bool2 = bool;
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(columnIndexOrThrow25));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(columnIndexOrThrow26));
                if (((int) prepare.getLong(columnIndexOrThrow27)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(columnIndexOrThrow28)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(columnIndexOrThrow29)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (((int) prepare.getLong(columnIndexOrThrow30)) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                workSpec = new WorkSpec(text2, intToState, text3, text4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, prepare.getLong(columnIndexOrThrow31), prepare.getLong(columnIndexOrThrow32), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(columnIndexOrThrow33))), i, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i2, i3, j8, i4, i5, text, bool2);
            }
            prepare.close();
            return workSpec;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkSpecIdAndStatesForName$lambda$4(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                arrayList.add(new WorkSpec.IdAndState(prepare.getText(0), WorkTypeConverters.intToState((int) prepare.getLong(1))));
            }
            return arrayList;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoFlowDataForIds$lambda$11(String str, List list, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            Iterator it = list.iterator();
            int i2 = 1;
            int i3 = 1;
            while (it.hasNext()) {
                prepare.mo48bindText(i3, (String) it.next());
                i3++;
            }
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!prepare.step()) {
                    break;
                }
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text3 = prepare.getText(i);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(i2));
                Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(2));
                int i4 = (int) prepare.getLong(3);
                int i5 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                ArrayMap<String, List<Data>> arrayMap3 = arrayMap2;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i6 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i7 = (int) prepare.getLong(22);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(5));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(6));
                if (((int) prepare.getLong(7)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (((int) prepare.getLong(8)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(9)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(10)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, prepare.getLong(11), prepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(13))), i4, intToBackoffPolicy, j4, j5, i6, i5, j6, i7, (List) MapsKt.getValue(arrayMap, prepare.getText(0)), (List) MapsKt.getValue(arrayMap3, prepare.getText(0))));
                arrayMap2 = arrayMap3;
                i2 = 1;
                i = 0;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoFlowForName$lambda$17(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            prepare.mo48bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!prepare.step()) {
                    break;
                }
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text3 = prepare.getText(i);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(i2));
                Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(2));
                int i3 = (int) prepare.getLong(3);
                int i4 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i5 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i6 = (int) prepare.getLong(22);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(5));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(6));
                if (((int) prepare.getLong(7)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (((int) prepare.getLong(8)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(9)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(10)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, prepare.getLong(11), prepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(13))), i3, intToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) MapsKt.getValue(arrayMap3, prepare.getText(0)), (List) MapsKt.getValue(arrayMap2, prepare.getText(0))));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoFlowForTag$lambda$13(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            prepare.mo48bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!prepare.step()) {
                    break;
                }
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text3 = prepare.getText(i);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(i2));
                Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(2));
                int i3 = (int) prepare.getLong(3);
                int i4 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i5 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i6 = (int) prepare.getLong(22);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(5));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(6));
                if (((int) prepare.getLong(7)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (((int) prepare.getLong(8)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(9)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(10)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, prepare.getLong(11), prepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(13))), i3, intToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) MapsKt.getValue(arrayMap3, prepare.getText(0)), (List) MapsKt.getValue(arrayMap2, prepare.getText(0))));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkSpec.WorkInfoPojo getWorkStatusPojoForId$lambda$8(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        WorkSpec.WorkInfoPojo workInfoPojo;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (prepare.step()) {
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            if (prepare.step()) {
                String text3 = prepare.getText(0);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(1));
                Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(2));
                int i = (int) prepare.getLong(3);
                int i2 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i3 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i4 = (int) prepare.getLong(22);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(5));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(6));
                if (((int) prepare.getLong(7)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (((int) prepare.getLong(8)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(9)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(10)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                workInfoPojo = new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, prepare.getLong(11), prepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(13))), i, intToBackoffPolicy, j4, j5, i3, i2, j6, i4, (List) MapsKt.getValue(arrayMap, prepare.getText(0)), (List) MapsKt.getValue(arrayMap2, prepare.getText(0)));
            } else {
                workInfoPojo = null;
            }
            prepare.close();
            return workInfoPojo;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoForIds$lambda$9(String str, List list, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            Iterator it = list.iterator();
            int i2 = 1;
            int i3 = 1;
            while (it.hasNext()) {
                prepare.mo48bindText(i3, (String) it.next());
                i3++;
            }
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!prepare.step()) {
                    break;
                }
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text3 = prepare.getText(i);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(i2));
                Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(2));
                int i4 = (int) prepare.getLong(3);
                int i5 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                ArrayMap<String, List<Data>> arrayMap3 = arrayMap2;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i6 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i7 = (int) prepare.getLong(22);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(5));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(6));
                if (((int) prepare.getLong(7)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (((int) prepare.getLong(8)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(9)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(10)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, prepare.getLong(11), prepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(13))), i4, intToBackoffPolicy, j4, j5, i6, i5, j6, i7, (List) MapsKt.getValue(arrayMap, prepare.getText(0)), (List) MapsKt.getValue(arrayMap3, prepare.getText(0))));
                arrayMap2 = arrayMap3;
                i2 = 1;
                i = 0;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoForName$lambda$15(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            prepare.mo48bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!prepare.step()) {
                    break;
                }
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text3 = prepare.getText(i);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(i2));
                Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(2));
                int i3 = (int) prepare.getLong(3);
                int i4 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i5 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i6 = (int) prepare.getLong(22);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(5));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(6));
                if (((int) prepare.getLong(7)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (((int) prepare.getLong(8)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(9)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(10)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, prepare.getLong(11), prepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(13))), i3, intToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) MapsKt.getValue(arrayMap3, prepare.getText(0)), (List) MapsKt.getValue(arrayMap2, prepare.getText(0))));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoForTag$lambda$12(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            prepare.mo48bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!prepare.step()) {
                    break;
                }
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text3 = prepare.getText(i);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(i2));
                Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(2));
                int i3 = (int) prepare.getLong(3);
                int i4 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i5 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i6 = (int) prepare.getLong(22);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(5));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(6));
                if (((int) prepare.getLong(7)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (((int) prepare.getLong(8)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(9)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(10)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, prepare.getLong(11), prepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(13))), i3, intToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) MapsKt.getValue(arrayMap3, prepare.getText(0)), (List) MapsKt.getValue(arrayMap2, prepare.getText(0))));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoLiveDataForIds$lambda$10(String str, List list, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            Iterator it = list.iterator();
            int i2 = 1;
            int i3 = 1;
            while (it.hasNext()) {
                prepare.mo48bindText(i3, (String) it.next());
                i3++;
            }
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!prepare.step()) {
                    break;
                }
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text3 = prepare.getText(i);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(i2));
                Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(2));
                int i4 = (int) prepare.getLong(3);
                int i5 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                ArrayMap<String, List<Data>> arrayMap3 = arrayMap2;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i6 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i7 = (int) prepare.getLong(22);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(5));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(6));
                if (((int) prepare.getLong(7)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (((int) prepare.getLong(8)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(9)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(10)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, prepare.getLong(11), prepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(13))), i4, intToBackoffPolicy, j4, j5, i6, i5, j6, i7, (List) MapsKt.getValue(arrayMap, prepare.getText(0)), (List) MapsKt.getValue(arrayMap3, prepare.getText(0))));
                arrayMap2 = arrayMap3;
                i2 = 1;
                i = 0;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoLiveDataForName$lambda$16(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            prepare.mo48bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!prepare.step()) {
                    break;
                }
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text3 = prepare.getText(i);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(i2));
                Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(2));
                int i3 = (int) prepare.getLong(3);
                int i4 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i5 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i6 = (int) prepare.getLong(22);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(5));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(6));
                if (((int) prepare.getLong(7)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (((int) prepare.getLong(8)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(9)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(10)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, prepare.getLong(11), prepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(13))), i3, intToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) MapsKt.getValue(arrayMap3, prepare.getText(0)), (List) MapsKt.getValue(arrayMap2, prepare.getText(0))));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkStatusPojoLiveDataForTag$lambda$14(String str, String str2, WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        int i2 = 1;
        try {
            prepare.mo48bindText(1, str2);
            ArrayMap<String, List<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, List<Data>> arrayMap2 = new ArrayMap<>();
            while (true) {
                i = 0;
                if (!prepare.step()) {
                    break;
                }
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text3 = prepare.getText(i);
                WorkInfo.State intToState = WorkTypeConverters.intToState((int) prepare.getLong(i2));
                Data fromByteArray = Data.Companion.fromByteArray(prepare.getBlob(2));
                int i3 = (int) prepare.getLong(3);
                int i4 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                ArrayMap<String, List<String>> arrayMap3 = arrayMap;
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i5 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i6 = (int) prepare.getLong(22);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType((int) prepare.getLong(5));
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(prepare.getBlob(6));
                if (((int) prepare.getLong(7)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (((int) prepare.getLong(8)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (((int) prepare.getLong(9)) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (((int) prepare.getLong(10)) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, prepare.getLong(11), prepare.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(prepare.getBlob(13))), i3, intToBackoffPolicy, j4, j5, i5, i4, j6, i6, (List) MapsKt.getValue(arrayMap3, prepare.getText(0)), (List) MapsKt.getValue(arrayMap2, prepare.getText(0))));
                arrayMap = arrayMap3;
                i = 0;
                i2 = 1;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasUnfinishedWorkFlow$lambda$22(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            boolean z = false;
            if (prepare.step()) {
                if (((int) prepare.getLong(0)) != 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit incrementGeneration$lambda$50(String str, String str2, SQLiteConnection sQLiteConnection) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit incrementPeriodCount$lambda$40(String str, String str2, SQLiteConnection sQLiteConnection) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final int incrementWorkSpecRunAttemptCount$lambda$43(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            prepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertWorkSpec$lambda$0(WorkSpecDao_Impl workSpecDao_Impl, WorkSpec workSpec, SQLiteConnection sQLiteConnection) {
        workSpecDao_Impl.__insertAdapterOfWorkSpec.insert(sQLiteConnection, (SQLiteConnection) workSpec);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int markWorkSpecScheduled$lambda$47(String str, long j, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo46bindLong(1, j);
            prepare.mo48bindText(2, str2);
            prepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast$lambda$49(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int resetScheduledState$lambda$48(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit resetWorkSpecNextScheduleTimeOverride$lambda$46(String str, String str2, int i, SQLiteConnection sQLiteConnection) {
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
    public static final int resetWorkSpecRunAttemptCount$lambda$44(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            prepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int setCancelledState$lambda$39(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            prepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setLastEnqueueTime$lambda$42(String str, long j, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo46bindLong(1, j);
            prepare.mo48bindText(2, str2);
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setNextScheduleTimeOverride$lambda$45(String str, long j, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo46bindLong(1, j);
            prepare.mo48bindText(2, str2);
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setOutput$lambda$41(String str, Data data, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo44bindBlob(1, Data.Companion.toByteArrayInternalV1(data));
            prepare.mo48bindText(2, str2);
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int setState$lambda$38(String str, WorkInfo.State state, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo46bindLong(1, WorkTypeConverters.stateToInt(state));
            prepare.mo48bindText(2, str2);
            prepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setStopReason$lambda$51(String str, int i, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo46bindLong(1, i);
            prepare.mo48bindText(2, str2);
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit updateWorkSpec$lambda$1(WorkSpecDao_Impl workSpecDao_Impl, WorkSpec workSpec, SQLiteConnection sQLiteConnection) {
        workSpecDao_Impl.__updateAdapterOfWorkSpec.handle(sQLiteConnection, workSpec);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int countNonFinishedContentUriTriggerWorkers() {
        return ((Number) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Wwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int countNonFinishedContentUriTriggerWorkers$lambda$36;
                countNonFinishedContentUriTriggerWorkers$lambda$36 = WorkSpecDao_Impl.countNonFinishedContentUriTriggerWorkers$lambda$36(r1, (SQLiteConnection) obj);
                return Integer.valueOf(countNonFinishedContentUriTriggerWorkers$lambda$36);
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(@NotNull final String str) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Www
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit delete$lambda$37;
                delete$lambda$37 = WorkSpecDao_Impl.delete$lambda$37(r1, str, (SQLiteConnection) obj);
                return delete$lambda$37;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<WorkSpec> getAllEligibleWorkSpecsForScheduling(final int i) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List allEligibleWorkSpecsForScheduling$lambda$29;
                allEligibleWorkSpecsForScheduling$lambda$29 = WorkSpecDao_Impl.getAllEligibleWorkSpecsForScheduling$lambda$29(r1, i, (SQLiteConnection) obj);
                return allEligibleWorkSpecsForScheduling$lambda$29;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<String> getAllUnfinishedWork() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Wwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List allUnfinishedWork$lambda$21;
                allUnfinishedWork$lambda$21 = WorkSpecDao_Impl.getAllUnfinishedWork$lambda$21(r1, (SQLiteConnection) obj);
                return allUnfinishedWork$lambda$21;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<String> getAllWorkSpecIds() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List allWorkSpecIds$lambda$5;
                allWorkSpecIds$lambda$5 = WorkSpecDao_Impl.getAllWorkSpecIds$lambda$5(r1, (SQLiteConnection) obj);
                return allWorkSpecIds$lambda$5;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public LiveData<List<String>> getAllWorkSpecIdsLiveData() {
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, true, new Function1() { // from class: androidx.work.impl.model.Kkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List allWorkSpecIdsLiveData$lambda$6;
                allWorkSpecIdsLiveData$lambda$6 = WorkSpecDao_Impl.getAllWorkSpecIdsLiveData$lambda$6(r1, (SQLiteConnection) obj);
                return allWorkSpecIdsLiveData$lambda$6;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<WorkSpec> getEligibleWorkForScheduling(final int i) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List eligibleWorkForScheduling$lambda$25;
                eligibleWorkForScheduling$lambda$25 = WorkSpecDao_Impl.getEligibleWorkForScheduling$lambda$25(r1, i, (SQLiteConnection) obj);
                return eligibleWorkForScheduling$lambda$25;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<WorkSpec> getEligibleWorkForSchedulingWithContentUris() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Illlllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List eligibleWorkForSchedulingWithContentUris$lambda$27;
                eligibleWorkForSchedulingWithContentUris$lambda$27 = WorkSpecDao_Impl.getEligibleWorkForSchedulingWithContentUris$lambda$27(r1, (SQLiteConnection) obj);
                return eligibleWorkForSchedulingWithContentUris$lambda$27;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<Data> getInputsFromPrerequisites(@NotNull final String str) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Kkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List inputsFromPrerequisites$lambda$18;
                inputsFromPrerequisites$lambda$18 = WorkSpecDao_Impl.getInputsFromPrerequisites$lambda$18(r1, str, (SQLiteConnection) obj);
                return inputsFromPrerequisites$lambda$18;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<WorkSpec> getRecentlyCompletedWork(final long j) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List recentlyCompletedWork$lambda$35;
                recentlyCompletedWork$lambda$35 = WorkSpecDao_Impl.getRecentlyCompletedWork$lambda$35(r1, j, (SQLiteConnection) obj);
                return recentlyCompletedWork$lambda$35;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<WorkSpec> getRunningWork() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Illllllllllllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List runningWork$lambda$33;
                runningWork$lambda$33 = WorkSpecDao_Impl.getRunningWork$lambda$33(r1, (SQLiteConnection) obj);
                return runningWork$lambda$33;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public LiveData<Long> getScheduleRequestedAtLiveData(@NotNull final String str) {
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, false, new Function1() { // from class: androidx.work.impl.model.Illllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Long scheduleRequestedAtLiveData$lambda$23;
                scheduleRequestedAtLiveData$lambda$23 = WorkSpecDao_Impl.getScheduleRequestedAtLiveData$lambda$23(r1, str, (SQLiteConnection) obj);
                return scheduleRequestedAtLiveData$lambda$23;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<WorkSpec> getScheduledWork() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List scheduledWork$lambda$31;
                scheduledWork$lambda$31 = WorkSpecDao_Impl.getScheduledWork$lambda$31(r1, (SQLiteConnection) obj);
                return scheduledWork$lambda$31;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @Nullable
    public WorkInfo.State getState(@NotNull final String str) {
        return (WorkInfo.State) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Illllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                WorkInfo.State state$lambda$7;
                state$lambda$7 = WorkSpecDao_Impl.getState$lambda$7(r1, str, (SQLiteConnection) obj);
                return state$lambda$7;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<String> getUnfinishedWorkWithName(@NotNull final String str) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List unfinishedWorkWithName$lambda$20;
                unfinishedWorkWithName$lambda$20 = WorkSpecDao_Impl.getUnfinishedWorkWithName$lambda$20(r1, str, (SQLiteConnection) obj);
                return unfinishedWorkWithName$lambda$20;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<String> getUnfinishedWorkWithTag(@NotNull final String str) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Illllllllllllllllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List unfinishedWorkWithTag$lambda$19;
                unfinishedWorkWithTag$lambda$19 = WorkSpecDao_Impl.getUnfinishedWorkWithTag$lambda$19(r1, str, (SQLiteConnection) obj);
                return unfinishedWorkWithTag$lambda$19;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @Nullable
    public WorkSpec getWorkSpec(@NotNull final String str) {
        return (WorkSpec) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                WorkSpec workSpec$lambda$3;
                workSpec$lambda$3 = WorkSpecDao_Impl.getWorkSpec$lambda$3(r1, str, (SQLiteConnection) obj);
                return workSpec$lambda$3;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(@NotNull final String str) {
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workSpecIdAndStatesForName$lambda$4;
                workSpecIdAndStatesForName$lambda$4 = WorkSpecDao_Impl.getWorkSpecIdAndStatesForName$lambda$4(r1, str, (SQLiteConnection) obj);
                return workSpecIdAndStatesForName$lambda$4;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowDataForIds(@NotNull final List<String> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        StringUtil.appendPlaceholders(sb, list.size());
        sb.append(")");
        final String sb2 = sb.toString();
        return FlowUtil.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec"}, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workStatusPojoFlowDataForIds$lambda$11;
                workStatusPojoFlowDataForIds$lambda$11 = WorkSpecDao_Impl.getWorkStatusPojoFlowDataForIds$lambda$11(sb2, list, this, (SQLiteConnection) obj);
                return workStatusPojoFlowDataForIds$lambda$11;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForName(@NotNull final String str) {
        return FlowUtil.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, new Function1() { // from class: androidx.work.impl.model.Illlllllllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workStatusPojoFlowForName$lambda$17;
                workStatusPojoFlowForName$lambda$17 = WorkSpecDao_Impl.getWorkStatusPojoFlowForName$lambda$17(r1, str, this, (SQLiteConnection) obj);
                return workStatusPojoFlowForName$lambda$17;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForTag(@NotNull final String str) {
        return FlowUtil.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workStatusPojoFlowForTag$lambda$13;
                workStatusPojoFlowForTag$lambda$13 = WorkSpecDao_Impl.getWorkStatusPojoFlowForTag$lambda$13(r1, str, this, (SQLiteConnection) obj);
                return workStatusPojoFlowForTag$lambda$13;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @Nullable
    public WorkSpec.WorkInfoPojo getWorkStatusPojoForId(@NotNull final String str) {
        return (WorkSpec.WorkInfoPojo) DBUtil.performBlocking(this.__db, true, true, new Function1() { // from class: androidx.work.impl.model.Illlllllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                WorkSpec.WorkInfoPojo workStatusPojoForId$lambda$8;
                workStatusPojoForId$lambda$8 = WorkSpecDao_Impl.getWorkStatusPojoForId$lambda$8(r1, str, this, (SQLiteConnection) obj);
                return workStatusPojoForId$lambda$8;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(@NotNull final List<String> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        StringUtil.appendPlaceholders(sb, list.size());
        sb.append(")");
        final String sb2 = sb.toString();
        return (List) DBUtil.performBlocking(this.__db, true, true, new Function1() { // from class: androidx.work.impl.model.Illlllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workStatusPojoForIds$lambda$9;
                workStatusPojoForIds$lambda$9 = WorkSpecDao_Impl.getWorkStatusPojoForIds$lambda$9(sb2, list, this, (SQLiteConnection) obj);
                return workStatusPojoForIds$lambda$9;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(@NotNull final String str) {
        return (List) DBUtil.performBlocking(this.__db, true, true, new Function1() { // from class: androidx.work.impl.model.Illllllllllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workStatusPojoForName$lambda$15;
                workStatusPojoForName$lambda$15 = WorkSpecDao_Impl.getWorkStatusPojoForName$lambda$15(r1, str, this, (SQLiteConnection) obj);
                return workStatusPojoForName$lambda$15;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(@NotNull final String str) {
        return (List) DBUtil.performBlocking(this.__db, true, true, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workStatusPojoForTag$lambda$12;
                workStatusPojoForTag$lambda$12 = WorkSpecDao_Impl.getWorkStatusPojoForTag$lambda$12(r1, str, this, (SQLiteConnection) obj);
                return workStatusPojoForTag$lambda$12;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(@NotNull final List<String> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        StringUtil.appendPlaceholders(sb, list.size());
        sb.append(")");
        final String sb2 = sb.toString();
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, new Function1() { // from class: androidx.work.impl.model.Kk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workStatusPojoLiveDataForIds$lambda$10;
                workStatusPojoLiveDataForIds$lambda$10 = WorkSpecDao_Impl.getWorkStatusPojoLiveDataForIds$lambda$10(sb2, list, this, (SQLiteConnection) obj);
                return workStatusPojoLiveDataForIds$lambda$10;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(@NotNull final String str) {
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, true, new Function1() { // from class: androidx.work.impl.model.Illlllllllllllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workStatusPojoLiveDataForName$lambda$16;
                workStatusPojoLiveDataForName$lambda$16 = WorkSpecDao_Impl.getWorkStatusPojoLiveDataForName$lambda$16(r1, str, this, (SQLiteConnection) obj);
                return workStatusPojoLiveDataForName$lambda$16;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(@NotNull final String str) {
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, true, new Function1() { // from class: androidx.work.impl.model.Illllllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List workStatusPojoLiveDataForTag$lambda$14;
                workStatusPojoLiveDataForTag$lambda$14 = WorkSpecDao_Impl.getWorkStatusPojoLiveDataForTag$lambda$14(r1, str, this, (SQLiteConnection) obj);
                return workStatusPojoLiveDataForTag$lambda$14;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    @NotNull
    public Flow<Boolean> hasUnfinishedWorkFlow() {
        return FlowUtil.createFlow(this.__db, false, new String[]{"workspec"}, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean hasUnfinishedWorkFlow$lambda$22;
                hasUnfinishedWorkFlow$lambda$22 = WorkSpecDao_Impl.hasUnfinishedWorkFlow$lambda$22(r1, (SQLiteConnection) obj);
                return Boolean.valueOf(hasUnfinishedWorkFlow$lambda$22);
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementGeneration(@NotNull final String str) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Kkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit incrementGeneration$lambda$50;
                incrementGeneration$lambda$50 = WorkSpecDao_Impl.incrementGeneration$lambda$50(r1, str, (SQLiteConnection) obj);
                return incrementGeneration$lambda$50;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementPeriodCount(@NotNull final String str) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit incrementPeriodCount$lambda$40;
                incrementPeriodCount$lambda$40 = WorkSpecDao_Impl.incrementPeriodCount$lambda$40(r1, str, (SQLiteConnection) obj);
                return incrementPeriodCount$lambda$40;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int incrementWorkSpecRunAttemptCount(@NotNull final String str) {
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Illlllllllllllllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int incrementWorkSpecRunAttemptCount$lambda$43;
                incrementWorkSpecRunAttemptCount$lambda$43 = WorkSpecDao_Impl.incrementWorkSpecRunAttemptCount$lambda$43(r1, str, (SQLiteConnection) obj);
                return Integer.valueOf(incrementWorkSpecRunAttemptCount$lambda$43);
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(@NotNull final WorkSpec workSpec) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Illllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit insertWorkSpec$lambda$0;
                insertWorkSpec$lambda$0 = WorkSpecDao_Impl.insertWorkSpec$lambda$0(WorkSpecDao_Impl.this, workSpec, (SQLiteConnection) obj);
                return insertWorkSpec$lambda$0;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int markWorkSpecScheduled(@NotNull final String str, final long j) {
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Kkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int markWorkSpecScheduled$lambda$47;
                markWorkSpecScheduled$lambda$47 = WorkSpecDao_Impl.markWorkSpecScheduled$lambda$47(r1, j, str, (SQLiteConnection) obj);
                return Integer.valueOf(markWorkSpecScheduled$lambda$47);
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast() {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast$lambda$49;
                pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast$lambda$49 = WorkSpecDao_Impl.pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast$lambda$49(r1, (SQLiteConnection) obj);
                return pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast$lambda$49;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetScheduledState() {
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int resetScheduledState$lambda$48;
                resetScheduledState$lambda$48 = WorkSpecDao_Impl.resetScheduledState$lambda$48(r1, (SQLiteConnection) obj);
                return Integer.valueOf(resetScheduledState$lambda$48);
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void resetWorkSpecNextScheduleTimeOverride(@NotNull final String str, final int i) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Wwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit resetWorkSpecNextScheduleTimeOverride$lambda$46;
                resetWorkSpecNextScheduleTimeOverride$lambda$46 = WorkSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride$lambda$46(r1, str, i, (SQLiteConnection) obj);
                return resetWorkSpecNextScheduleTimeOverride$lambda$46;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(@NotNull final String str) {
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int resetWorkSpecRunAttemptCount$lambda$44;
                resetWorkSpecRunAttemptCount$lambda$44 = WorkSpecDao_Impl.resetWorkSpecRunAttemptCount$lambda$44(r1, str, (SQLiteConnection) obj);
                return Integer.valueOf(resetWorkSpecRunAttemptCount$lambda$44);
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setCancelledState(@NotNull final String str) {
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Kkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int cancelledState$lambda$39;
                cancelledState$lambda$39 = WorkSpecDao_Impl.setCancelledState$lambda$39(r1, str, (SQLiteConnection) obj);
                return Integer.valueOf(cancelledState$lambda$39);
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setLastEnqueueTime(@NotNull final String str, final long j) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Illlllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit lastEnqueueTime$lambda$42;
                lastEnqueueTime$lambda$42 = WorkSpecDao_Impl.setLastEnqueueTime$lambda$42(r1, j, str, (SQLiteConnection) obj);
                return lastEnqueueTime$lambda$42;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setNextScheduleTimeOverride(@NotNull final String str, final long j) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit nextScheduleTimeOverride$lambda$45;
                nextScheduleTimeOverride$lambda$45 = WorkSpecDao_Impl.setNextScheduleTimeOverride$lambda$45(r1, j, str, (SQLiteConnection) obj);
                return nextScheduleTimeOverride$lambda$45;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setOutput(@NotNull final String str, @NotNull final Data data) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit output$lambda$41;
                output$lambda$41 = WorkSpecDao_Impl.setOutput$lambda$41(r1, data, str, (SQLiteConnection) obj);
                return output$lambda$41;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setState(@NotNull final WorkInfo.State state, @NotNull final String str) {
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Illllllllllllllllllll
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int state$lambda$38;
                state$lambda$38 = WorkSpecDao_Impl.setState$lambda$38(r1, state, str, (SQLiteConnection) obj);
                return Integer.valueOf(state$lambda$38);
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setStopReason(@NotNull final String str, final int i) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Wwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit stopReason$lambda$51;
                stopReason$lambda$51 = WorkSpecDao_Impl.setStopReason$lambda$51(r1, i, str, (SQLiteConnection) obj);
                return stopReason$lambda$51;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void updateWorkSpec(@NotNull final WorkSpec workSpec) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Kkkkkkkkkkkkkkkk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit updateWorkSpec$lambda$1;
                updateWorkSpec$lambda$1 = WorkSpecDao_Impl.updateWorkSpec$lambda$1(WorkSpecDao_Impl.this, workSpec, (SQLiteConnection) obj);
                return updateWorkSpec$lambda$1;
            }
        });
    }
}
