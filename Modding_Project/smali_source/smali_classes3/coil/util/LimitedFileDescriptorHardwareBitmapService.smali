.class final Lcoil/util/LimitedFileDescriptorHardwareBitmapService;
.super Lcoil/util/HardwareBitmapService;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/util/LimitedFileDescriptorHardwareBitmapService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcoil/util/LimitedFileDescriptorHardwareBitmapService;",
        "Lcoil/util/HardwareBitmapService;",
        "Lcoil/util/Logger;",
        "logger",
        "<init>",
        "(Lcoil/util/Logger;)V",
        "Lcoil/size/Size;",
        "size",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcoil/size/Size;)Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Z",
        "Lcoil/util/Logger;",
        "Companion",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcoil/util/LimitedFileDescriptorHardwareBitmapService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/util/Logger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil/util/LimitedFileDescriptorHardwareBitmapService$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil/util/LimitedFileDescriptorHardwareBitmapService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil/util/LimitedFileDescriptorHardwareBitmapService;->Companion:Lcoil/util/LimitedFileDescriptorHardwareBitmapService$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcoil/util/Logger;)V
    .locals 1
    .param p1    # Lcoil/util/Logger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcoil/util/HardwareBitmapService;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcoil/util/LimitedFileDescriptorHardwareBitmapService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/util/Logger;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 2

    .line 1
    sget-object v0, Lcoil/util/FileDescriptorCounter;->INSTANCE:Lcoil/util/FileDescriptorCounter;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/util/LimitedFileDescriptorHardwareBitmapService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/util/Logger;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcoil/util/FileDescriptorCounter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/util/Logger;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/size/Size;)Z
    .locals 3
    .param p1    # Lcoil/size/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcoil/size/Size;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Dimension;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcoil/size/Dimension$Pixels;

    .line 6
    .line 7
    const v2, 0x7fffffff

    .line 8
    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcoil/size/Dimension$Pixels;

    .line 13
    .line 14
    iget v0, v0, Lcoil/size/Dimension$Pixels;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    const/16 v1, 0x64

    .line 19
    .line 20
    if-le v0, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcoil/size/Size;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Dimension;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    instance-of v0, p1, Lcoil/size/Dimension$Pixels;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Lcoil/size/Dimension$Pixels;

    .line 31
    .line 32
    iget v2, p1, Lcoil/size/Dimension$Pixels;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 33
    .line 34
    :cond_1
    if-le v2, v1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    return p1
.end method
