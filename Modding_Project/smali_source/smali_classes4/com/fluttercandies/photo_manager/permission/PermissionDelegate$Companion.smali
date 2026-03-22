.class public final Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;",
        "",
        "<init>",
        "()V",
        "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;",
        "",
        "requestCode",
        "I",
        "limitedRequestCode",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/16 v2, 0x21

    .line 14
    .line 15
    if-gt v1, v0, :cond_1

    .line 16
    .line 17
    if-ge v0, v2, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    if-ne v0, v2, :cond_2

    .line 26
    .line 27
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    const/16 v1, 0x22

    .line 34
    .line 35
    if-gt v1, v0, :cond_3

    .line 36
    .line 37
    const v1, 0x7fffffff

    .line 38
    .line 39
    .line 40
    if-ge v0, v1, :cond_3

    .line 41
    .line 42
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;-><init>()V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 49
    .line 50
    const-string v1, "This sdk version is not supported yet."

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method
