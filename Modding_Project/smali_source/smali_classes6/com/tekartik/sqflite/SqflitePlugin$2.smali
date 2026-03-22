.class Lcom/tekartik/sqflite/SqflitePlugin$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/SqflitePlugin;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;


# direct methods
.method public constructor <init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/SqflitePlugin;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/SqflitePlugin;

    .line 11
    .line 12
    invoke-static {v2, v1}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    :try_start_1
    sget v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 19
    .line 20
    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v1

    .line 30
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 34
    .line 35
    .line 36
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    throw v1
.end method
