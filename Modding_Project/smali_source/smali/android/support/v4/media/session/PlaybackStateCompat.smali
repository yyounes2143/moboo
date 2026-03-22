.class public final Landroid/support/v4/media/session/PlaybackStateCompat;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;,
        Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;,
        Landroid/support/v4/media/session/PlaybackStateCompat$Api22Impl;,
        Landroid/support/v4/media/session/PlaybackStateCompat$Builder;,
        Landroid/support/v4/media/session/PlaybackStateCompat$ShuffleMode;,
        Landroid/support/v4/media/session/PlaybackStateCompat$RepeatMode;,
        Landroid/support/v4/media/session/PlaybackStateCompat$State;,
        Landroid/support/v4/media/session/PlaybackStateCompat$MediaKeyAction;,
        Landroid/support/v4/media/session/PlaybackStateCompat$Actions;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwww:Landroid/media/session/PlaybackState;

.field public final Wwwwwwwwwwwwwww:Landroid/os/Bundle;

.field public final Wwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwww:Ljava/lang/CharSequence;

.field public final Wwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwww:F

.field public final Wwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJI",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 3
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 4
    iput-wide p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 5
    iput p6, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwww:F

    .line 6
    iput-wide p7, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 7
    iput p9, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwww:I

    .line 8
    iput-object p10, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwww:Ljava/lang/CharSequence;

    .line 9
    iput-wide p11, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwww:J

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 11
    iput-wide p14, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwww:J

    move-object/from16 p1, p16

    .line 12
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwww:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwww:F

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwww:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 20
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwww:Ljava/lang/CharSequence;

    .line 21
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwww:J

    .line 23
    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwww:I

    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwww(J)I
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x7e

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const-wide/16 v0, 0x2

    .line 11
    .line 12
    cmp-long v0, p0, v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/16 p0, 0x7f

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    const-wide/16 v0, 0x20

    .line 20
    .line 21
    cmp-long v0, p0, v0

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    const/16 p0, 0x57

    .line 26
    .line 27
    return p0

    .line 28
    :cond_2
    const-wide/16 v0, 0x10

    .line 29
    .line 30
    cmp-long v0, p0, v0

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    const/16 p0, 0x58

    .line 35
    .line 36
    return p0

    .line 37
    :cond_3
    const-wide/16 v0, 0x1

    .line 38
    .line 39
    cmp-long v0, p0, v0

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    const/16 p0, 0x56

    .line 44
    .line 45
    return p0

    .line 46
    :cond_4
    const-wide/16 v0, 0x40

    .line 47
    .line 48
    cmp-long v0, p0, v0

    .line 49
    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    const/16 p0, 0x5a

    .line 53
    .line 54
    return p0

    .line 55
    :cond_5
    const-wide/16 v0, 0x8

    .line 56
    .line 57
    cmp-long v0, p0, v0

    .line 58
    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    const/16 p0, 0x59

    .line 62
    .line 63
    return p0

    .line 64
    :cond_6
    const-wide/16 v0, 0x200

    .line 65
    .line 66
    cmp-long p0, p0, v0

    .line 67
    .line 68
    if-nez p0, :cond_7

    .line 69
    .line 70
    const/16 p0, 0x55

    .line 71
    .line 72
    return p0

    .line 73
    :cond_7
    const/4 p0, 0x0

    .line 74
    return p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 21

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    move-object/from16 v1, p0

    .line 5
    .line 6
    check-cast v1, Landroid/media/session/PlaybackState;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object/from16 v17, v0

    .line 46
    .line 47
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api22Impl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object v20

    .line 51
    invoke-static/range {v20 .. v20}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 55
    .line 56
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v8

    .line 68
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState;)F

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v11

    .line 76
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v15

    .line 84
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v18

    .line 88
    const/4 v13, 0x0

    .line 89
    invoke-direct/range {v4 .. v20}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwww:Landroid/media/session/PlaybackState;

    .line 93
    .line 94
    return-object v4

    .line 95
    :cond_1
    return-object v0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwww:Landroid/media/session/PlaybackState;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/media/session/PlaybackState$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    iget-wide v3, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 12
    .line 13
    iget v5, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwww:F

    .line 14
    .line 15
    iget-wide v6, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwww:J

    .line 16
    .line 17
    invoke-static/range {v1 .. v7}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwww(Landroid/media/session/PlaybackState$Builder;IJFJ)V

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 21
    .line 22
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwww(Landroid/media/session/PlaybackState$Builder;J)V

    .line 23
    .line 24
    .line 25
    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 26
    .line 27
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState$Builder;J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwww:Ljava/lang/CharSequence;

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwww(Landroid/media/session/PlaybackState$Builder;Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/media/session/PlaybackState$CustomAction;

    .line 58
    .line 59
    invoke-static {v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState$Builder;Landroid/media/session/PlaybackState$CustomAction;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwww:J

    .line 64
    .line 65
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwww(Landroid/media/session/PlaybackState$Builder;J)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-static {v1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api22Impl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState$Builder;Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwww:Landroid/media/session/PlaybackState;

    .line 78
    .line 79
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwww:Landroid/media/session/PlaybackState;

    .line 80
    .line 81
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwww:F

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PlaybackState {"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "state="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", position="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", buffered position="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", speed="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwww:F

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", updated="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwww:J

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", actions="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", error code="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwww:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", error message="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwww:Ljava/lang/CharSequence;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", custom actions="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", active item id="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwww:J

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, "}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwww:F

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwww:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwww:Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwww:J

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwww:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
