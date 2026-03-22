.class public final Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->ensureCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "androidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1",
        "Landroidx/sqlite/db/SupportSQLiteQuery;",
        "sql",
        "",
        "getSql",
        "()Ljava/lang/String;",
        "bindTo",
        "",
        "statement",
        "Landroidx/sqlite/db/SupportSQLiteProgram;",
        "argCount",
        "",
        "getArgCount",
        "()I",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getBindingTypes$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    const/4 v1, 0x1

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_5

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 13
    .line 14
    invoke-static {v3}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getBindingTypes$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[I

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    aget v3, v3, v2

    .line 19
    .line 20
    if-eq v3, v1, :cond_4

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq v3, v4, :cond_3

    .line 24
    .line 25
    const/4 v4, 0x3

    .line 26
    if-eq v3, v4, :cond_2

    .line 27
    .line 28
    const/4 v4, 0x4

    .line 29
    if-eq v3, v4, :cond_1

    .line 30
    .line 31
    const/4 v4, 0x5

    .line 32
    if-eq v3, v4, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 40
    .line 41
    invoke-static {v3}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getBlobBindings$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[[B

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    aget-object v3, v3, v2

    .line 46
    .line 47
    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 52
    .line 53
    invoke-static {v3}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getStringBindings$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    aget-object v3, v3, v2

    .line 58
    .line 59
    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 64
    .line 65
    invoke-static {v3}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getDoubleBindings$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[D

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    aget-wide v4, v3, v2

    .line 70
    .line 71
    invoke-interface {p1, v2, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 76
    .line 77
    invoke-static {v3}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getLongBindings$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[J

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    aget-wide v4, v3, v2

    .line 82
    .line 83
    invoke-interface {p1, v2, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 84
    .line 85
    .line 86
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    return-void
.end method

.method public getArgCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getBindingTypes$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    return v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/driver/SupportSQLiteStatement;->getSql()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
