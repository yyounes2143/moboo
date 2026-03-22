package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import javax.inject.Inject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class WorkInitializer {
    private final Executor executor;
    private final SynchronizationGuard guard;
    private final WorkScheduler scheduler;
    private final EventStore store;

    @Inject
    public WorkInitializer(Executor executor, EventStore eventStore, WorkScheduler workScheduler, SynchronizationGuard synchronizationGuard) {
        this.executor = executor;
        this.store = eventStore;
        this.scheduler = workScheduler;
        this.guard = synchronizationGuard;
    }

    public static /* synthetic */ Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WorkInitializer workInitializer) {
        for (TransportContext transportContext : workInitializer.store.loadActiveContexts()) {
            workInitializer.scheduler.schedule(transportContext, 1);
        }
        return null;
    }

    public void ensureContextsScheduled() {
        this.executor.execute(new Runnable() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Wwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                r0.guard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Wwwwwwwwwwwwwwwwwwww
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        return WorkInitializer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WorkInitializer.this);
                    }
                });
            }
        });
    }
}
