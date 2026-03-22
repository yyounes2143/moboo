.class Lcom/tekartik/sqflite/Database;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tekartik/sqflite/SqfliteCursor;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tekartik/sqflite/operation/QueuedOperation;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    iput v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    iput v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 24
    .line 25
    iput-object p1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 28
    .line 29
    iput-boolean p4, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 30
    .line 31
    iput p3, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    iput p5, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 34
    .line 35
    return-void
.end method

.method public static Wwwwwwwwww(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static Wwwwwwwwwww(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 11
    :catch_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "com.tekartik.sqflite.wal_enabled"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x21

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-wide/16 v1, 0x80

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p0, v0, v1}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v1, 0x80

    .line 27
    .line 28
    invoke-static {p0, v0, v1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwww(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqlCommand;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    .line 1
    invoke-virtual {p0, p4}, Lcom/tekartik/sqflite/SqlCommand;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/database/sqlite/SQLiteProgram;)V

    .line 2
    .line 3
    .line 4
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/tekartik/sqflite/operation/Operation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/tekartik/sqflite/operation/Operation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget v3, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 29
    .line 30
    add-int/2addr v3, v2

    .line 31
    iput v3, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iput-object v3, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 49
    .line 50
    :cond_2
    return-void

    .line 51
    :cond_3
    if-eqz v1, :cond_4

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "transactionId"

    .line 59
    .line 60
    iget-object p0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v0}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iput-object v3, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 78
    .line 79
    :cond_5
    invoke-interface {p1, v3}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkkkk()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Lcom/tekartik/sqflite/operation/Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/tekartik/sqflite/operation/Operation;->getTransactionId()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-ne v0, v1, :cond_3

    .line 27
    .line 28
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 44
    .line 45
    new-instance p2, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/tekartik/sqflite/Database;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, p0, p2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void

    .line 54
    :cond_3
    new-instance v0, Lcom/tekartik/sqflite/operation/QueuedOperation;

    .line 55
    .line 56
    invoke-direct {v0, p1, p2}, Lcom/tekartik/sqflite/operation/QueuedOperation;-><init>(Lcom/tekartik/sqflite/operation/Operation;Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public Kkkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 1
    .param p1    # Lcom/tekartik/sqflite/operation/Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkk()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/tekartik/sqflite/operation/QueuedOperation;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/tekartik/sqflite/operation/QueuedOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return-void
.end method

.method public Kkkkkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 1
    .param p1    # Lcom/tekartik/sqflite/operation/Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public Kkkkkkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 1
    .param p1    # Lcom/tekartik/sqflite/operation/Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public Kkkkkkkkkkkkkkkkkkkkkkkkk()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/tekartik/sqflite/Database$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/tekartik/sqflite/Database$1;-><init>(Lcom/tekartik/sqflite/Database;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    return-void
.end method

.method public Kkkkkkkkkkkkkkkkkkkkkkkkkk()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 24
    .line 25
    invoke-static {v0}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object v0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/high16 v0, 0x30000000

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/high16 v0, 0x10000000

    .line 46
    .line 47
    :goto_0
    iget-object v1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-static {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    .line 56
    return-void
.end method

.method public declared-synchronized Www()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwww:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public Wwww(Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public Wwwww(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    .line 2
    .line 3
    const-string v1, "sqlite_error"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "open_failed "

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-interface {p2, v1, p1, v0}, Lcom/tekartik/sqflite/operation/OperationResult;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    instance-of v0, p1, Landroid/database/SQLException;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p2}, Lcom/tekartik/sqflite/operation/SqlErrorInfo;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p2, v1, p1, v0}, Lcom/tekartik/sqflite/operation/OperationResult;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p2}, Lcom/tekartik/sqflite/operation/SqlErrorInfo;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {p2, v1, p1, v0}, Lcom/tekartik/sqflite/operation/OperationResult;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public Wwwwww()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwww()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ","

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "("

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ")"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public Wwwwwwww()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwww()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public Wwwwwwwww()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/tekartik/sqflite/operation/Operation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/tekartik/sqflite/SqlCommand;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {p1}, Lcom/tekartik/sqflite/operation/Operation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwww()Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0}, Lcom/tekartik/sqflite/SqlCommand;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0}, Lcom/tekartik/sqflite/SqlCommand;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwww(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/tekartik/sqflite/Database;->Wwwww(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public Wwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)V
    .locals 1
    .param p1    # Lcom/tekartik/sqflite/operation/Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/tekartik/sqflite/Database;->Kkkkkkkkkkkkkkkkkkkk(Lcom/tekartik/sqflite/operation/Operation;Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public declared-synchronized Wwwwwwwwwwwwww(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget p1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    iput p1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget p1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 28
    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    iput p1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwww:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    :cond_1
    :goto_0
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1
.end method

.method public final Wwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/tekartik/sqflite/operation/Operation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1, v3}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwww()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v4, "SELECT changes()"

    .line 26
    .line 27
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-lez v4, :cond_3

    .line 38
    .line 39
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget v4, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 50
    .line 51
    invoke-static {v4}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    move-object v3, v0

    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move-exception v2

    .line 65
    move-object v3, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {p1, v3}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    return v2

    .line 78
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v3}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 87
    .line 88
    .line 89
    :cond_4
    return v2

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    goto :goto_2

    .line 92
    :catch_1
    move-exception v2

    .line 93
    :goto_1
    :try_start_3
    invoke-virtual {p0, v2, p1}, Lcom/tekartik/sqflite/Database;->Wwwww(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    .line 95
    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 99
    .line 100
    .line 101
    :cond_5
    return v1

    .line 102
    :goto_2
    if-eqz v3, :cond_6

    .line 103
    .line 104
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 105
    .line 106
    .line 107
    :cond_6
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 9
    .param p1    # Lcom/tekartik/sqflite/operation/Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cursorId"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/tekartik/sqflite/operation/Operation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    const-string v4, "cancel"

    .line 16
    .line 17
    invoke-interface {p1, v4}, Lcom/tekartik/sqflite/operation/Operation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget v4, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    invoke-static {v4}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v4}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return v5

    .line 47
    :cond_1
    iget-object v3, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/tekartik/sqflite/SqfliteCursor;

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    if-eqz v3, :cond_5

    .line 57
    .line 58
    :try_start_0
    iget-object v2, v3, Lcom/tekartik/sqflite/SqfliteCursor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/Cursor;

    .line 59
    .line 60
    iget v7, v3, Lcom/tekartik/sqflite/SqfliteCursor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 61
    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {p0, v2, v7}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwww(Landroid/database/Cursor;Ljava/lang/Integer;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-nez v8, :cond_2

    .line 75
    .line 76
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    .line 77
    .line 78
    .line 79
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    move v2, v5

    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_4

    .line 86
    :catch_0
    move-exception v0

    .line 87
    move v2, v6

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move v2, v6

    .line 90
    :goto_0
    if-eqz v2, :cond_3

    .line 91
    .line 92
    :try_start_1
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    move v6, v2

    .line 98
    goto :goto_4

    .line 99
    :catch_1
    move-exception v0

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    :goto_1
    invoke-interface {p1, v7}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .line 103
    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    invoke-virtual {p0, v3}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqfliteCursor;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return v5

    .line 110
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v5, "Cursor "

    .line 118
    .line 119
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, " not found"

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :goto_2
    :try_start_3
    invoke-virtual {p0, v0, p1}, Lcom/tekartik/sqflite/Database;->Wwwww(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;)V

    .line 139
    .line 140
    .line 141
    if-eqz v3, :cond_6

    .line 142
    .line 143
    invoke-virtual {p0, v3}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqfliteCursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    move-object v4, v3

    .line 148
    :goto_3
    if-nez v2, :cond_7

    .line 149
    .line 150
    if-eqz v4, :cond_7

    .line 151
    .line 152
    invoke-virtual {p0, v4}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqfliteCursor;)V

    .line 153
    .line 154
    .line 155
    :cond_7
    return v6

    .line 156
    :goto_4
    if-nez v6, :cond_8

    .line 157
    .line 158
    if-eqz v3, :cond_8

    .line 159
    .line 160
    invoke-virtual {p0, v3}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqfliteCursor;)V

    .line 161
    .line 162
    .line 163
    :cond_8
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 8
    .param p1    # Lcom/tekartik/sqflite/operation/Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cursorPageSize"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/tekartik/sqflite/operation/Operation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/tekartik/sqflite/operation/Operation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/tekartik/sqflite/SqlCommand;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    .line 15
    invoke-static {v2}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwwww()Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v4, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 33
    .line 34
    invoke-direct {v4, v1}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/tekartik/sqflite/SqlCommand;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/tekartik/sqflite/SqlCommand;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v5, Lcom/tekartik/sqflite/Constant;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 44
    .line 45
    .line 46
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 47
    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwww(Landroid/database/Cursor;Ljava/lang/Integer;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x1

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_1

    .line 65
    .line 66
    iget v5, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 67
    .line 68
    add-int/2addr v5, v4

    .line 69
    iput v5, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 70
    .line 71
    const-string v6, "cursorId"

    .line 72
    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance v6, Lcom/tekartik/sqflite/SqfliteCursor;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-direct {v6, v5, v0, v1}, Lcom/tekartik/sqflite/SqfliteCursor;-><init>(IILandroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    .line 88
    .line 89
    :try_start_2
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 90
    .line 91
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    move-object v2, v6

    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    move-object v2, v6

    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception v0

    .line 104
    move-object v2, v6

    .line 105
    goto :goto_1

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    goto :goto_2

    .line 108
    :catch_1
    move-exception v0

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {p1, v3}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    .line 112
    .line 113
    if-nez v2, :cond_2

    .line 114
    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    .line 119
    .line 120
    :cond_2
    return v4

    .line 121
    :catchall_2
    move-exception p1

    .line 122
    move-object v1, v2

    .line 123
    goto :goto_2

    .line 124
    :catch_2
    move-exception v0

    .line 125
    move-object v1, v2

    .line 126
    :goto_1
    :try_start_4
    invoke-virtual {p0, v0, p1}, Lcom/tekartik/sqflite/Database;->Wwwww(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;)V

    .line 127
    .line 128
    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    invoke-virtual {p0, v2}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqfliteCursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    .line 133
    .line 134
    :cond_3
    if-nez v2, :cond_4

    .line 135
    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 139
    .line 140
    .line 141
    :cond_4
    const/4 p1, 0x0

    .line 142
    return p1

    .line 143
    :goto_2
    if-nez v2, :cond_5

    .line 144
    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 148
    .line 149
    .line 150
    :cond_5
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/tekartik/sqflite/operation/Operation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1, v2}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return v3

    .line 21
    :cond_1
    const-string v0, "SELECT changes(), last_insert_rowid()"

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwww()Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-lez v4, :cond_5

    .line 38
    .line 39
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_5

    .line 44
    .line 45
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    iget v4, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 52
    .line 53
    invoke-static {v4}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    move-object v2, v0

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception v2

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    invoke-interface {p1, v2}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    return v3

    .line 78
    :cond_3
    :try_start_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    iget v2, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 83
    .line 84
    invoke-static {v2}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-interface {p1, v2}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    .line 102
    .line 103
    return v3

    .line 104
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v2}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    .line 114
    .line 115
    :cond_6
    return v3

    .line 116
    :catchall_1
    move-exception p1

    .line 117
    goto :goto_2

    .line 118
    :catch_1
    move-exception v0

    .line 119
    move-object v6, v2

    .line 120
    move-object v2, v0

    .line 121
    move-object v0, v6

    .line 122
    :goto_1
    :try_start_4
    invoke-virtual {p0, v2, p1}, Lcom/tekartik/sqflite/Database;->Wwwww(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    .line 129
    .line 130
    :cond_7
    return v1

    .line 131
    :goto_2
    if-eqz v2, :cond_8

    .line 132
    .line 133
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 134
    .line 135
    .line 136
    :cond_8
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww(Landroid/database/Cursor;Ljava/lang/Integer;)Ljava/util/Map;
    .locals 6
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move-object v1, v0

    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_2

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "columns"

    .line 36
    .line 37
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v3, "rows"

    .line 41
    .line 42
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-object v5, v1

    .line 46
    move-object v1, v0

    .line 47
    move-object v0, v5

    .line 48
    :cond_1
    invoke-static {p1, v2}, Lcom/tekartik/sqflite/Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/database/Cursor;I)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-lt v3, v4, :cond_0

    .line 66
    .line 67
    :cond_2
    if-nez v0, :cond_3

    .line 68
    .line 69
    new-instance p1, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 72
    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqfliteCursor;)V
    .locals 2
    .param p1    # Lcom/tekartik/sqflite/SqfliteCursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget v0, p1, Lcom/tekartik/sqflite/SqfliteCursor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iget v1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/tekartik/sqflite/SqfliteCursor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/Cursor;

    .line 24
    .line 25
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

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
    check-cast p1, Lcom/tekartik/sqflite/SqfliteCursor;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqfliteCursor;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tekartik/sqflite/LogLevel;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/tekartik/sqflite/Database;->Wwwwwwww()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "operations"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/tekartik/sqflite/operation/MethodCallOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/List;

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_c

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/Map;

    .line 43
    .line 44
    new-instance v5, Lcom/tekartik/sqflite/operation/BatchOperation;

    .line 45
    .line 46
    invoke-direct {v5, v3, p1}, Lcom/tekartik/sqflite/operation/BatchOperation;-><init>(Ljava/util/Map;Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const/4 v6, -0x1

    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    sparse-switch v7, :sswitch_data_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :sswitch_0
    const-string v7, "query"

    .line 66
    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    const/4 v6, 0x3

    .line 75
    goto :goto_1

    .line 76
    :sswitch_1
    const-string v7, "update"

    .line 77
    .line 78
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-nez v7, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const/4 v6, 0x2

    .line 86
    goto :goto_1

    .line 87
    :sswitch_2
    const-string v7, "insert"

    .line 88
    .line 89
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const/4 v6, 0x1

    .line 97
    goto :goto_1

    .line 98
    :sswitch_3
    const-string v7, "execute"

    .line 99
    .line 100
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-nez v7, :cond_3

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const/4 v6, 0x0

    .line 108
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 109
    .line 110
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v0, "Batch method \'"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, "\' not supported"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string v0, "bad_param"

    .line 134
    .line 135
    invoke-interface {p2, v0, p1, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_4

    .line 144
    .line 145
    invoke-virtual {v5, v2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_4
    if-eqz v1, :cond_5

    .line 150
    .line 151
    invoke-virtual {v5, v2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_5
    invoke-virtual {v5, p2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_6

    .line 164
    .line 165
    invoke-virtual {v5, v2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_6
    if-eqz v1, :cond_7

    .line 171
    .line 172
    invoke-virtual {v5, v2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_7
    invoke-virtual {v5, p2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_8

    .line 186
    .line 187
    invoke-virtual {v5, v2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_8
    if-eqz v1, :cond_9

    .line 193
    .line 194
    invoke-virtual {v5, v2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_9
    invoke-virtual {v5, p2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/operation/Operation;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_a

    .line 208
    .line 209
    invoke-virtual {v5, v2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_a
    if-eqz v1, :cond_b

    .line 215
    .line 216
    invoke-virtual {v5, v2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_b
    invoke-virtual {v5, p2}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_c
    if-eqz p1, :cond_d

    .line 226
    .line 227
    invoke-interface {p2, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_d
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :sswitch_data_0
    .sparse-switch
        -0x4ea7088b -> :sswitch_3
        -0x468f3d47 -> :sswitch_2
        -0x31ffc737 -> :sswitch_1
        0x66f18c8 -> :sswitch_0
    .end sparse-switch

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
