.class Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;
.super Ljava/util/logging/Handler;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/runtime/LoggerRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RuntimeHandler"
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/runtime/LoggerRuntime;


# direct methods
.method public constructor <init>(Lorg/jacoco/core/runtime/LoggerRuntime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/runtime/LoggerRuntime;

    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/jacoco/core/runtime/LoggerRuntime;Lorg/jacoco/core/runtime/LoggerRuntime$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;-><init>(Lorg/jacoco/core/runtime/LoggerRuntime;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/runtime/LoggerRuntime;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/jacoco/core/runtime/LoggerRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/jacoco/core/runtime/LoggerRuntime;)Ljava/util/logging/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/runtime/LoggerRuntime;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/jacoco/core/runtime/LoggerRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/jacoco/core/runtime/LoggerRuntime;)Ljava/util/logging/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/runtime/LoggerRuntime;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/jacoco/core/runtime/LoggerRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/jacoco/core/runtime/LoggerRuntime;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/runtime/LoggerRuntime;

    .line 18
    .line 19
    iget-object v0, v0, Lorg/jacoco/core/runtime/AbstractRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/runtime/RuntimeData;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lorg/jacoco/core/runtime/RuntimeData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
