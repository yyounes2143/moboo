.class public Lcom/jeremyliao/liveeventbus/logger/DefaultLogger;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/jeremyliao/liveeventbus/logger/Logger;


# static fields
.field private static final TAG:Ljava/lang/String; = "[LiveEventBus]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    if-ne p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-ne p1, p2, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object p2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    if-ne p1, p2, :cond_2

    return-void

    .line 4
    :cond_2
    sget-object p2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    if-ne p1, p2, :cond_3

    return-void

    .line 5
    :cond_3
    sget-object p1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 6
    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    if-ne p1, p2, :cond_0

    return-void

    .line 7
    :cond_0
    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-ne p1, p2, :cond_1

    return-void

    .line 8
    :cond_1
    sget-object p2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    if-ne p1, p2, :cond_2

    return-void

    .line 9
    :cond_2
    sget-object p2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    if-ne p1, p2, :cond_3

    return-void

    .line 10
    :cond_3
    sget-object p1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    return-void
.end method
