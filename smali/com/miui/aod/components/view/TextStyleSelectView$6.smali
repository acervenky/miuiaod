.class Lcom/miui/aod/components/view/TextStyleSelectView$6;
.super Ljava/lang/Object;
.source "TextStyleSelectView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/components/view/TextStyleSelectView;->inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/view/TextStyleSelectView;


# direct methods
.method constructor <init>(Lcom/miui/aod/components/view/TextStyleSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView$6;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView$6;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const p2, 0x44098000    # 550.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x43160000    # 150.0f

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/miui/aod/components/view/TextStyleSelectView;->access$400(Lcom/miui/aod/components/view/TextStyleSelectView;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
