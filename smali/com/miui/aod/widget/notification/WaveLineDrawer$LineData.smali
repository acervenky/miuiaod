.class Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;
.super Ljava/lang/Object;
.source "WaveLineDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/widget/notification/WaveLineDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineData"
.end annotation


# instance fields
.field public mAmp:F

.field public final mLeftPath:Landroid/graphics/Path;

.field public final mRightPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;Landroid/graphics/Path;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mLeftPath:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mRightPath:Landroid/graphics/Path;

    int-to-float p1, p3

    iput p1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mAmp:F

    return-void
.end method
