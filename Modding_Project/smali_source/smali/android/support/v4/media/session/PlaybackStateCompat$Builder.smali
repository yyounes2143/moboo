.class public final Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/CharSequence;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:F

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww:J

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    const-wide/16 v1, -0x1

    .line 6
    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 8
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 9
    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwww:F

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:F

    .line 10
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwww:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 11
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwww:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 12
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwww:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 13
    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwww:I

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwww:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/CharSequence;

    .line 15
    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwww:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_0
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwww:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 18
    iget-object p1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwww:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 4
    .line 5
    iput-wide p5, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    .line 7
    iput p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:F

    .line 8
    .line 9
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v5

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move-wide v2, p2

    .line 8
    move v4, p4

    .line 9
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 4
    .line 5
    iget v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iget-wide v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 8
    .line 9
    iget-wide v5, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 10
    .line 11
    iget v7, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:F

    .line 12
    .line 13
    iget-wide v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 14
    .line 15
    iget v10, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/CharSequence;

    .line 18
    .line 19
    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 20
    .line 21
    iget-object v14, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 22
    .line 23
    move-object v15, v1

    .line 24
    move/from16 v16, v2

    .line 25
    .line 26
    iget-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 27
    .line 28
    move-wide/from16 v17, v1

    .line 29
    .line 30
    iget-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 31
    .line 32
    move/from16 v2, v16

    .line 33
    .line 34
    move-wide/from16 v19, v17

    .line 35
    .line 36
    move-object/from16 v17, v1

    .line 37
    .line 38
    move-object v1, v15

    .line 39
    move-wide/from16 v15, v19

    .line 40
    .line 41
    invoke-direct/range {v1 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    move-object v15, v1

    .line 45
    return-object v15
.end method
