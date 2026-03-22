.class public Lcom/tekartik/sqflite/SqflitePlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field public static Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

.field public static Wwwwwwwwwwwwwww:I

.field public static Wwwwwwwwwwwwwwww:I

.field public static Wwwwwwwwwwwwwwwww:I

.field public static Wwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public static Wwwwwwwwwwwwwwwwwww:I

.field public static final Wwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public static final Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public static final Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tekartik/sqflite/Database;",
            ">;"
        }
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 31
    .line 32
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwww:I

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    sput v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwww:I

    .line 36
    .line 37
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwww:I

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwww(IZZ)Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v1, "id"

    .line 11
    .line 12
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    .line 19
    const-string p1, "recovered"

    .line 20
    .line 21
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eqz p2, :cond_1

    .line 25
    .line 26
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    const-string p1, "recoveredInTransaction"

    .line 29
    .line 30
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-string v0, ":memory:"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    sget v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Lcom/tekartik/sqflite/Database;->Wwww(Lcom/tekartik/sqflite/operation/Operation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const-string v0, "locale"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    iget-object p1, p1, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/tekartik/sqflite/Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/util/Locale;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "Error calling setLocale: "

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "sqlite_error"

    .line 46
    .line 47
    invoke-interface {p2, p1, p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ZLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Boolean;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;ZI)V
    .locals 2

    .line 1
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    :try_start_0
    new-instance p0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    const-string p0, "sqlite_error"

    .line 39
    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string p4, "open_failed "

    .line 46
    .line 47
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 p3, 0x0

    .line 58
    invoke-interface {p2, p0, p1, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_4

    .line 65
    :cond_0
    :try_start_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {p0, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_1

    .line 72
    .line 73
    invoke-virtual {p4}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkkkkkkk()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :cond_1
    invoke-virtual {p4}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkkkkkkkk()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    :goto_0
    :try_start_2
    sget-object p0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    if-eqz p6, :cond_2

    .line 86
    .line 87
    :try_start_3
    sget-object p3, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 88
    .line 89
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p5

    .line 93
    invoke-interface {p3, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    :goto_1
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 100
    .line 101
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    :try_start_4
    iget p0, p4, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 110
    .line 111
    invoke-static {p0}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_3

    .line 116
    .line 117
    invoke-virtual {p4}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    const/4 p0, 0x0

    .line 122
    invoke-static {p7, p0, p0}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww(IZZ)Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 131
    :try_start_6
    throw p1

    .line 132
    :goto_3
    new-instance p1, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    .line 133
    .line 134
    invoke-direct {p1, p5, p2}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4, p0, p1}, Lcom/tekartik/sqflite/Database;->Wwwww(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;)V

    .line 138
    .line 139
    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 142
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 143
    throw p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final Www(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 9
    .line 10
    new-instance v2, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwww;

    .line 11
    .line 12
    invoke-direct {v2, p1, p2, v0}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final Wwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 9
    .line 10
    new-instance v2, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwww;

    .line 11
    .line 12
    invoke-direct {v2, p1, v0, p2}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodCall;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final Wwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 9
    .line 10
    new-instance v2, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwww;

    .line 11
    .line 12
    invoke-direct {v2, p1, p2, v0}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final Wwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 9
    .line 10
    new-instance v2, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwww;

    .line 11
    .line 12
    invoke-direct {v2, p1, p2, v0}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const-string v0, "androidThreadPriority"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    :cond_0
    const-string v0, "androidThreadCount"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget v2, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwww:I

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwww:I

    .line 45
    .line 46
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 51
    .line 52
    .line 53
    sput-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 54
    .line 55
    :cond_1
    invoke-static {p1}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    sput p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 66
    .line 67
    :cond_2
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final Wwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 12

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v3, v0

    .line 8
    check-cast v3, Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "readOnly"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    const-string v2, "singleInstance"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    if-nez v7, :cond_0

    .line 38
    .line 39
    move v5, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    move v5, v1

    .line 43
    :goto_0
    if-eqz v5, :cond_5

    .line 44
    .line 45
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v1

    .line 48
    :try_start_0
    sget v4, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 49
    .line 50
    invoke-static {v4}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    sget-object v4, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v4}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    move-object p1, v0

    .line 68
    goto :goto_3

    .line 69
    :cond_1
    :goto_1
    sget-object v4, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 70
    .line 71
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/Integer;

    .line 76
    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    sget-object v6, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 80
    .line 81
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Lcom/tekartik/sqflite/Database;

    .line 86
    .line 87
    if-eqz v6, :cond_4

    .line 88
    .line 89
    iget-object v8, v6, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    .line 91
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-nez v8, :cond_2

    .line 96
    .line 97
    sget v4, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 98
    .line 99
    invoke-static {v4}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_4

    .line 104
    .line 105
    invoke-virtual {v6}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    sget p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 110
    .line 111
    invoke-static {p1}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/tekartik/sqflite/Database;->Www()Z

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {v6}, Lcom/tekartik/sqflite/Database;->Www()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-static {p1, v2, v0}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww(IZZ)Ljava/util/Map;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 140
    :cond_4
    :goto_2
    monitor-exit v1

    .line 141
    goto :goto_4

    .line 142
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    throw p1

    .line 144
    :cond_5
    :goto_4
    sget-object v10, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 145
    .line 146
    monitor-enter v10

    .line 147
    :try_start_1
    sget v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwww:I

    .line 148
    .line 149
    add-int/lit8 v4, v1, 0x1

    .line 150
    .line 151
    sput v4, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwww:I

    .line 152
    .line 153
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 154
    new-instance v1, Lcom/tekartik/sqflite/Database;

    .line 155
    .line 156
    iget-object v2, p0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 157
    .line 158
    sget v6, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 159
    .line 160
    invoke-direct/range {v1 .. v6}, Lcom/tekartik/sqflite/Database;-><init>(Landroid/content/Context;Ljava/lang/String;IZI)V

    .line 161
    .line 162
    .line 163
    monitor-enter v10

    .line 164
    :try_start_2
    sget-object v2, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 165
    .line 166
    if-nez v2, :cond_6

    .line 167
    .line 168
    const-string v2, "Sqflite"

    .line 169
    .line 170
    sget v6, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwww:I

    .line 171
    .line 172
    sget v8, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwww:I

    .line 173
    .line 174
    invoke-static {v2, v6, v8}, Lcom/tekartik/sqflite/DatabaseWorkerPool$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    sput-object v2, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 179
    .line 180
    invoke-interface {v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->start()V

    .line 181
    .line 182
    .line 183
    iget v2, v1, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 184
    .line 185
    invoke-static {v2}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_6

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    move-object p1, v0

    .line 197
    goto :goto_6

    .line 198
    :cond_6
    :goto_5
    sget-object v2, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 199
    .line 200
    iput-object v2, v1, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 201
    .line 202
    iget v2, v1, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 203
    .line 204
    invoke-static {v2}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_7

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    :cond_7
    sget-object v11, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 214
    .line 215
    move-object v6, v1

    .line 216
    new-instance v1, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;

    .line 217
    .line 218
    move v9, v4

    .line 219
    move v8, v5

    .line 220
    move v2, v7

    .line 221
    move-object v7, p1

    .line 222
    move-object v4, p2

    .line 223
    move-object v5, v0

    .line 224
    invoke-direct/range {v1 .. v9}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;-><init>(ZLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Boolean;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;ZI)V

    .line 225
    .line 226
    .line 227
    move-object p1, v1

    .line 228
    move-object v1, v6

    .line 229
    invoke-interface {v11, v1, p1}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 230
    .line 231
    .line 232
    monitor-exit v10

    .line 233
    return-void

    .line 234
    :goto_6
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    throw p1

    .line 236
    :catchall_2
    move-exception v0

    .line 237
    move-object p1, v0

    .line 238
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 239
    throw p1
.end method

.method public final Wwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 9
    .line 10
    new-instance v2, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwww;

    .line 11
    .line 12
    invoke-direct {v2, p1, p2, v0}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "tekartik_sqflite.db"

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sput-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final Wwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 9
    .line 10
    new-instance v2, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwww;

    .line 11
    .line 12
    invoke-direct {v2, p1, p2, v0}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final Wwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 13
    .line 14
    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    :goto_0
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/tekartik/sqflite/Database;

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    iget-object v5, v4, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    sget v5, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 61
    .line 62
    invoke-static {v5}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/tekartik/sqflite/Database;->Www()Z

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v4, 0x0

    .line 82
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    new-instance v0, Lcom/tekartik/sqflite/SqflitePlugin$2;

    .line 84
    .line 85
    invoke-direct {v0, p0, v4, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin$2;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-interface {p1, v4, v0}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p1
.end method

.method public final Wwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sput-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 12
    .line 13
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    move p1, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p1, v0

    .line 26
    :goto_0
    sput-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 27
    .line 28
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    sput p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    sput v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 48
    .line 49
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 50
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final Wwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    .line 1
    const-string v0, "cmd"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "get"

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    sget p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    const-string v1, "logLevel"

    .line 25
    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    new-instance v2, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lcom/tekartik/sqflite/Database;

    .line 73
    .line 74
    new-instance v5, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v6, v4, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 80
    .line 81
    const-string v7, "path"

    .line 82
    .line 83
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-boolean v6, v4, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 87
    .line 88
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const-string v7, "singleInstance"

    .line 93
    .line 94
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget v4, v4, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 98
    .line 99
    if-lez v4, :cond_1

    .line 100
    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    const-string p1, "databases"

    .line 123
    .line 124
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final Wwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwww(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final Wwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget v1, p1, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v1, p1, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v2, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v2

    .line 35
    :try_start_0
    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p1, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 54
    .line 55
    new-instance v1, Lcom/tekartik/sqflite/SqflitePlugin$1;

    .line 56
    .line 57
    invoke-direct {v1, p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin$1;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, p1, v1}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 9
    .line 10
    new-instance v2, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwww;

    .line 11
    .line 12
    invoke-direct {v2, v0, p1, p2}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwww;-><init>(Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwww(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    sget-object v0, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    .line 6
    .line 7
    invoke-interface {p2}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "com.tekartik.sqflite"

    .line 12
    .line 13
    invoke-direct {p1, p2, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;
    .locals 2

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwww(I)Lcom/tekartik/sqflite/Database;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "database_closed "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "sqlite_error"

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(I)Lcom/tekartik/sqflite/Database;
    .locals 1

    .line 1
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/tekartik/sqflite/Database;

    .line 12
    .line 13
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;)V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p1, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwww()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    :goto_2
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_1
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget v1, p1, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 38
    .line 39
    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_4

    .line 51
    :cond_1
    :goto_3
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    sput-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 58
    .line 59
    :cond_2
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwww(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 10
    .line 11
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sparse-switch v2, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :sswitch_0
    const-string v2, "getDatabasesPath"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    const/16 v1, 0xf

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :sswitch_1
    const-string v2, "getPlatformVersion"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    const/16 v1, 0xe

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :sswitch_2
    const-string v2, "queryCursorNext"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_2
    const/16 v1, 0xd

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :sswitch_3
    const-string v2, "databaseExists"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_3
    const/16 v1, 0xc

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :sswitch_4
    const-string v2, "query"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_4
    const/16 v1, 0xb

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :sswitch_5
    const-string v2, "debug"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_5
    const/16 v1, 0xa

    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :sswitch_6
    const-string v2, "batch"

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_6

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_6
    const/16 v1, 0x9

    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :sswitch_7
    const-string v2, "openDatabase"

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_7

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_7
    const/16 v1, 0x8

    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :sswitch_8
    const-string v2, "debugMode"

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_8

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_8
    const/4 v1, 0x7

    .line 138
    goto :goto_0

    .line 139
    :sswitch_9
    const-string v2, "deleteDatabase"

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_9

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_9
    const/4 v1, 0x6

    .line 149
    goto :goto_0

    .line 150
    :sswitch_a
    const-string v2, "androidSetLocale"

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_a

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_a
    const/4 v1, 0x5

    .line 160
    goto :goto_0

    .line 161
    :sswitch_b
    const-string v2, "update"

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_b

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_b
    const/4 v1, 0x4

    .line 171
    goto :goto_0

    .line 172
    :sswitch_c
    const-string v2, "insert"

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_c

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_c
    const/4 v1, 0x3

    .line 182
    goto :goto_0

    .line 183
    :sswitch_d
    const-string v2, "options"

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_d

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_d
    const/4 v1, 0x2

    .line 193
    goto :goto_0

    .line 194
    :sswitch_e
    const-string v2, "closeDatabase"

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_e

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_e
    const/4 v1, 0x1

    .line 204
    goto :goto_0

    .line 205
    :sswitch_f
    const-string v2, "execute"

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_f

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_f
    const/4 v1, 0x0

    .line 215
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 216
    .line 217
    .line 218
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v0, "Android "

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Www(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :pswitch_d
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_e
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :pswitch_f
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :sswitch_data_0
    .sparse-switch
        -0x4ea7088b -> :sswitch_f
        -0x4ab8246d -> :sswitch_e
        -0x4a797962 -> :sswitch_d
        -0x468f3d47 -> :sswitch_c
        -0x31ffc737 -> :sswitch_b
        -0x179ee453 -> :sswitch_a
        -0xfb4dfba -> :sswitch_9
        -0xbd41d6a -> :sswitch_8
        -0x1064e1b -> :sswitch_7
        0x592d73a -> :sswitch_6
        0x5b09653 -> :sswitch_5
        0x66f18c8 -> :sswitch_4
        0x3901a9b7 -> :sswitch_3
        0x47241251 -> :sswitch_2
        0x529446af -> :sswitch_1
        0x6f17c6e7 -> :sswitch_0
    .end sparse-switch

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
