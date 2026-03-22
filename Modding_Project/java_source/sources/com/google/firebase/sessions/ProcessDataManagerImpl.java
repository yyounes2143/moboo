package com.google.firebase.sessions;

import android.content.Context;
import android.os.Process;
import com.google.firebase.sessions.ProcessDataManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Singleton
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001c\u0010\u001c\u001a\u00020\u001b2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\u001c\u0010 \u001a\u00020\u001b2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\b\u0010!\u001a\u00020\"H\u0016J*\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001f0\u001e2\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eH\u0016J\u000e\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00160%H\u0002J\u0018\u0010&\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\t8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\r\u001a\u0004\b\u0013\u0010\u000bR\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\r\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/google/firebase/sessions/ProcessDataManagerImpl;", "Lcom/google/firebase/sessions/ProcessDataManager;", "appContext", "Landroid/content/Context;", "uuidGenerator", "Lcom/google/firebase/sessions/UuidGenerator;", "<init>", "(Landroid/content/Context;Lcom/google/firebase/sessions/UuidGenerator;)V", "myProcessName", "", "getMyProcessName", "()Ljava/lang/String;", "myProcessName$delegate", "Lkotlin/Lazy;", "myPid", "", "getMyPid", "()I", "myUuid", "getMyUuid", "myUuid$delegate", "myProcessDetails", "Lcom/google/firebase/sessions/ProcessDetails;", "getMyProcessDetails", "()Lcom/google/firebase/sessions/ProcessDetails;", "myProcessDetails$delegate", "hasGeneratedSession", "", "isColdStart", "processDataMap", "", "Lcom/google/firebase/sessions/ProcessData;", "isMyProcessStale", "onSessionGenerated", "", "updateProcessDataMap", "getAppProcessDetails", "", "isProcessStale", "processDetails", "processData", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nProcessDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessDataManager.kt\ncom/google/firebase/sessions/ProcessDataManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1611#2,9:124\n1863#2:133\n1864#2:135\n1620#2:136\n1734#2,3:137\n1#3:134\n1#3:140\n*S KotlinDebug\n*F\n+ 1 ProcessDataManager.kt\ncom/google/firebase/sessions/ProcessDataManagerImpl\n*L\n78#1:124,9\n78#1:133\n78#1:135\n78#1:136\n83#1:137,3\n78#1:134\n*E\n"})
/* loaded from: classes5.dex */
public final class ProcessDataManagerImpl implements ProcessDataManager {
    @NotNull
    private final Context appContext;
    private boolean hasGeneratedSession;
    @NotNull
    private final Lazy myUuid$delegate;
    @NotNull
    private final Lazy myProcessName$delegate = LazyKt.lazy(new Function0() { // from class: com.google.firebase.sessions.Wwwwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String myProcessName_delegate$lambda$0;
            myProcessName_delegate$lambda$0 = ProcessDataManagerImpl.myProcessName_delegate$lambda$0(ProcessDataManagerImpl.this);
            return myProcessName_delegate$lambda$0;
        }
    });
    private final int myPid = Process.myPid();
    @NotNull
    private final Lazy myProcessDetails$delegate = LazyKt.lazy(new Function0() { // from class: com.google.firebase.sessions.Wwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ProcessDetails myProcessDetails_delegate$lambda$2;
            myProcessDetails_delegate$lambda$2 = ProcessDataManagerImpl.myProcessDetails_delegate$lambda$2(ProcessDataManagerImpl.this);
            return myProcessDetails_delegate$lambda$2;
        }
    });

    @Inject
    public ProcessDataManagerImpl(@NotNull Context context, @NotNull final UuidGenerator uuidGenerator) {
        this.appContext = context;
        this.myUuid$delegate = LazyKt.lazy(new Function0() { // from class: com.google.firebase.sessions.Wwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String myUuid_delegate$lambda$1;
                myUuid_delegate$lambda$1 = ProcessDataManagerImpl.myUuid_delegate$lambda$1(UuidGenerator.this);
                return myUuid_delegate$lambda$1;
            }
        });
    }

    private final List<ProcessDetails> getAppProcessDetails() {
        return ProcessDetailsProvider.INSTANCE.getAppProcessDetails(this.appContext);
    }

    private final ProcessDetails getMyProcessDetails() {
        return (ProcessDetails) this.myProcessDetails$delegate.getValue();
    }

    private final boolean isProcessStale(ProcessDetails processDetails, ProcessData processData) {
        if (Intrinsics.areEqual(getMyProcessName(), processDetails.getProcessName())) {
            if (processDetails.getPid() != processData.getPid() || !Intrinsics.areEqual(getMyUuid(), processData.getUuid())) {
                return true;
            }
            return false;
        } else if (processDetails.getPid() != processData.getPid()) {
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProcessDetails myProcessDetails_delegate$lambda$2(ProcessDataManagerImpl processDataManagerImpl) {
        return ProcessDetailsProvider.INSTANCE.getMyProcessDetails(processDataManagerImpl.appContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String myProcessName_delegate$lambda$0(ProcessDataManagerImpl processDataManagerImpl) {
        return processDataManagerImpl.getMyProcessDetails().getProcessName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String myUuid_delegate$lambda$1(UuidGenerator uuidGenerator) {
        return uuidGenerator.next().toString();
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    @NotNull
    public Map<String, ProcessData> generateProcessDataMap() {
        return ProcessDataManager.DefaultImpls.generateProcessDataMap(this);
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public int getMyPid() {
        return this.myPid;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    @NotNull
    public String getMyProcessName() {
        return (String) this.myProcessName$delegate.getValue();
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    @NotNull
    public String getMyUuid() {
        return (String) this.myUuid$delegate.getValue();
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public boolean isColdStart(@NotNull Map<String, ProcessData> map) {
        Pair pair;
        if (this.hasGeneratedSession) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (ProcessDetails processDetails : getAppProcessDetails()) {
            ProcessData processData = map.get(processDetails.getProcessName());
            if (processData != null) {
                pair = new Pair(processDetails, processData);
            } else {
                pair = null;
            }
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Pair pair2 = (Pair) obj;
            if (!isProcessStale((ProcessDetails) pair2.component1(), (ProcessData) pair2.component2())) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public boolean isMyProcessStale(@NotNull Map<String, ProcessData> map) {
        ProcessData processData = map.get(getMyProcessName());
        if (processData == null || processData.getPid() != getMyPid() || !Intrinsics.areEqual(processData.getUuid(), getMyUuid())) {
            return true;
        }
        return false;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public void onSessionGenerated() {
        this.hasGeneratedSession = true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    @NotNull
    public Map<String, ProcessData> updateProcessDataMap(@Nullable Map<String, ProcessData> map) {
        Map mutableMap;
        if (map != null && (mutableMap = MapsKt.toMutableMap(map)) != null) {
            mutableMap.put(getMyProcessName(), new ProcessData(Process.myPid(), getMyUuid()));
            Map<String, ProcessData> map2 = MapsKt.toMap(mutableMap);
            if (map2 != null) {
                return map2;
            }
        }
        return MapsKt.mapOf(TuplesKt.to(getMyProcessName(), new ProcessData(Process.myPid(), getMyUuid())));
    }
}
