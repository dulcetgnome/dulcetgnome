select s.site, l.location, s.coordinates, s.max_depth, s.gradient, s.description, s.comments, a.type, f.feature from sites s inner join locations l on (s.location_id = l._id) inner join site_features sf on (sf.site_id = s._id) inner join features f on (sf.feature_id = f._id) inner join site_aquatic_life saq on (saq.site_id = s._id) inner join aquatic_life a on (a._id = saq.aquatic_life_id);