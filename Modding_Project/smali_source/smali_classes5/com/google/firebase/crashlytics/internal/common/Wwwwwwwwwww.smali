.class public final synthetic Lcom/google/firebase/crashlytics/internal/common/Wwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/crashlytics/internal/metadata/EventMetadata;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Lcom/google/firebase/crashlytics/internal/metadata/EventMetadata;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/crashlytics/internal/metadata/EventMetadata;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/google/firebase/crashlytics/internal/common/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/crashlytics/internal/metadata/EventMetadata;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/google/firebase/crashlytics/internal/common/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Lcom/google/firebase/crashlytics/internal/metadata/EventMetadata;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
