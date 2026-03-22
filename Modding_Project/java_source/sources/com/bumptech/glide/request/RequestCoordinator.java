package com.bumptech.glide.request;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface RequestCoordinator {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum RequestState {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);
        
        private final boolean isComplete;

        RequestState(boolean z) {
            this.isComplete = z;
        }

        public boolean isComplete() {
            return this.isComplete;
        }
    }

    boolean Wwwwwwwwwwwwwwwwwwwwwwwww(Request request);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request);

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request);

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request);

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    RequestCoordinator getRoot();
}
