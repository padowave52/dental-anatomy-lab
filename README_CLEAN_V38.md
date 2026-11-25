# V38 clean models comparison

- Existing GLB triangle count and positions are preserved for the 30 automatically converted models.
- Vertex welding + recomputed normals produce smooth shading without subdivision or new triangle geometry.
- Distinct surface materials now use approximately 50% alpha blending; the crown/base remains opaque.
- `tooth_36_annotated.glb` is the exact supplied clean 36 reference.
- `tooth_23_annotated.glb` uses the supplied clean 23 reference **repositioned** to the original 23 center (reference had a roughly 4.4mm translation).
- No anatomical segmentation is synthesized. Missing surfaces remain missing (for example FDI 31 has no separately segmented mesial).
- `mesh_cleanup_report.csv` reports the material region triangle count and vertex counts before/after.
- V38 site loader preserves source GLB color alpha at slider 0% and applies additional transparency when slider is raised.
- Both the public and administrator configuration flows are inherited from V37; verify any site/GLB changes in browser before release.
- For anatomical verification, a visual inspection of 32 models is still needed; this automated transformation is a render/material cleanup, not manual mesh sculpting.
