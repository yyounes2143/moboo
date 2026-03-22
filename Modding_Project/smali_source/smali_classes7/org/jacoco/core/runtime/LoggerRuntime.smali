.class public Lorg/jacoco/core/runtime/LoggerRuntime;
.super Lorg/jacoco/core/runtime/AbstractRuntime;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;
    }
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/logging/Handler;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/logging/Logger;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/jacoco/core/runtime/AbstractRuntime;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/jacoco/core/runtime/LoggerRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/logging/Logger;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/logging/Logger;

    .line 19
    .line 20
    new-instance v0, Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;-><init>(Lorg/jacoco/core/runtime/LoggerRuntime;Lorg/jacoco/core/runtime/LoggerRuntime$1;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/logging/Handler;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/jacoco/core/runtime/LoggerRuntime;)Ljava/util/logging/Logger;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/jacoco/core/runtime/LoggerRuntime;)Ljava/util/logging/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/logging/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/jacoco/core/runtime/LoggerRuntime;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/logging/Logger;
    .locals 2

    .line 1
    const-string v0, "jacoco-runtime"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
