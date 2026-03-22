.class public Lorg/jacoco/core/tools/ExecFileLoader;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/data/ExecutionDataStore;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/data/SessionInfoStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jacoco/core/data/SessionInfoStore;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/jacoco/core/data/SessionInfoStore;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jacoco/core/tools/ExecFileLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/data/SessionInfoStore;

    .line 10
    .line 11
    new-instance v0, Lorg/jacoco/core/data/ExecutionDataStore;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/jacoco/core/data/ExecutionDataStore;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/jacoco/core/tools/ExecFileLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/data/ExecutionDataStore;

    .line 17
    .line 18
    return-void
.end method
